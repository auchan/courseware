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
	function splitDate(date)
	{
		return {
			y:date.split(" ")[0].split("-")[0],
			m:date.split(" ")[0].split("-")[1],
			d:date.split(" ")[0].split("-")[2],
			h:date.split(" ")[1].split(":")[0],
			M:date.split(" ")[1].split(":")[1]
		}
	}
	function earlyThan(a, b)
	{
		totalMinutesA = ((((a.y * 12)+a.m)*31+a.d)*24+a.h)+a.M
		totalMinutesB = ((((b.y * 12)+b.m)*31+b.d)*24+b.h)+b.M
		return totalMinutesA < totalMinutesB
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
				// date: year-month-day hour:minute
				d = cw[5].firstChild.nodeValue;			// 日期
				c = cw[7].firstChild.nodeValue;			// 注释

				cw_info[i] = {
					name: n,
					url: u,
					date:d,
					comment:c
				}
				// insert-sort, 选择日期最大，即最新的放到前面
				for (j=i;j>0;j--)
				{
					if (earlyThan(splitDate(cw_info[j-1].date), splitDate(cw_info[j].date)))
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
			cw_out += "<ul class=\"cw_line\">";
			for (i=0; i<x.length; i++)
			{
				cw_out += "<li>";
				cw_out += "<div class=\"cw_title\"><a href=\""+cw_info[i].url+"\"target=\"_blank\">"+cw_info[i].name+"</a></div>";
				cw_out +=" <date>"+cw_info[i].date+" ("+cw_info[i].comment+")"+"</date>";
				cw_out += "</li>";
			}
			cw_out += "</ul>";
			document.getElementById(cw_id).innerHTML=cw_out;
		}
	}
	xmlhttp.open("GET",cw_url,true);
	xmlhttp.send();
}
