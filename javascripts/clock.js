function startTime()
{
	var today = new Date();
	var h = today.getHours();
	var m = today.getMinutes();
	var s = today.getSeconds();
	// 2013 年 2 月 25 日为第二学年第二学期，教学周第一周的第一天
	// 2013 年 8 月 26 日为第三学年第一学期，教学周第一周的第一天
	startYear = 2013;
	startMonth = 8;
	startDay = 26;

	var startDate = new Date();
	startDate.setDate(startDay);
	startDate.setMonth(startMonth - 1); /* 月份从0开始 */
	startDate.setFullYear(startYear);
	startDate.setHours(0);
	startDate.setMinutes(0);
	startDate.setSeconds(0); 
	var interval = today - startDate;
	var num = Math.floor(interval / (24*60*60*1000*7)) + 1;
	// 计算星期
	if (today.getDay() == 5) week = "星期五";
	else if (today.getDay() == 6) week = "星期六";
	else if (today.getDay() == 0) week = "星期日";
	else if (today.getDay() == 1) week = "星期一";
	else if (today.getDay() == 2) week = "星期二";
	else if (today.getDay() == 3) week = "星期三";
	else if (today.getDay() == 4) week = "星期四";
	// add a zero in front of numbers<10
	h=checkTime(h);
	m=checkTime(m);
	s=checkTime(s);
	document.getElementById('time').innerHTML= " 第" + weAre9(num) +"周" + "     " + week + "  "+ "<font size=8>" + h+":"+m+":"+s+"</font>";
	t=setTimeout('startTime()',1000);
}
function checkTime(i)
{
	D1 = weAre9(i / 10);
	D0 = weAre9(i % 10);
    return D1 + D0;
}
function weAre9(num)
{
	if (num == 9)
		return "⑨";
	return Math.floor(num)+"";
}
