function loadXMLDoc(cw_url, cw_id)
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	{// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
	}
	else
	{// code for IE6, IE5
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}

	function earlyThan(a, b)
	{
		if (a.year < b.year)
			return true;
		else if (a.year == b.year)
		{
			if (a.month < b.month)
				return true;
			else if (a.month == b.month)
			{
				if (a.day < b.day)
					return true;
				else if (a.day == b.day)
				{
					if (a.hour < b.hour)
						return true;
					else if (a.minute < b.minute)
						return true;
				}
			}
		}
		return false;
	}
	xmlhttp.onreadystatechange=function()
	{
		if (xmlhttp.readyState==4 && xmlhttp.status==200)
		{
			x=xmlhttp.responseXML.documentElement.getElementsByTagName("cw");
			cw_info = new Array();
			for (i=0;i<x.length;i++)
			{
				cw=x[i].childNodes;

				n = cw[1].firstChild.nodeValue;			// 课件名称
				u = cw[3].firstChild.nodeValue;			// 课件链接
				// date: year:month:day:hour:minute
				dateStruct = cw[5].childNodes;			// 日期结构
				y = dateStruct[1].firstChild.nodeValue;		// 年
				m = dateStruct[3].firstChild.nodeValue;		// 月
				d = dateStruct[5].firstChild.nodeValue;		// 日
				h = dateStruct[7].firstChild.nodeValue;		// 小时
				mi = dateStruct[9].firstChild.nodeValue;		// 分钟
				c = cw[7].firstChild.nodeValue;			// 注释

				cw_info[i] = {
					name: n,
					url: u,
					year: y,
					month: m,
					day: d,
					hour: h,
					minute: mi,
					comment: c
				}
				// insert-sort, 选择日期最大，即最新的放到前面
				for (j=i;j>0;j--)
				{
					if (earlyThan(cw_info[j-1], cw_info[j]))
					{
						tmp = cw_info[j-1];
						cw_info[j-1] = cw_info[j];
						cw_info[j] = tmp;
					}
					else
						break;
				}
			}
			// <li>
			// <a href="http://your_url">课件名称</a>
			// <date>年-月-日 小时:分钟（注释）</date>
			// </li>
			cw_out= "";
			for (i=0; i<x.length; i++)
			{
				cw_out += "<li>";
				cw_out += "<a href=\""+cw_info[i].url+"\"target=\"_blank\">"+cw_info[i].name+"</a>";
				cw_out +="<date>"+cw_info[i].year+"-"+cw_info[i].month+"-"+cw_info[i].day+" "+cw_info[i].hour+":"+cw_info[i].minute+" ("+cw_info[i].comment+")"+"</date>";
				cw_out += "</li>";
			}
			document.getElementById(cw_id).innerHTML=cw_out;
		}
	}
	xmlhttp.open("GET",cw_url,true);
	xmlhttp.send();
}
