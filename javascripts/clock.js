function startTicking()
{
	initClock();
	clock();
}
function initClock()
{
	// 2013 年 2 月 25 日为第二学年第二学期，教学周第一周的第一天
	// 2013 年 8 月 26 日为第三学年第一学期，教学周第一周的第一天
	startYear = 2013;
	startMonth = 8;
	startDay = 26;
	startDate = new Date();
	startDate.setDate(startDay);
	startDate.setMonth(startMonth - 1); /* 月份从0开始 */
	startDate.setFullYear(startYear);
	startDate.setHours(0);
	startDate.setMinutes(0);
	startDate.setSeconds(0);

	weeks = ["星期日", "星期一", "星期二", 
	"星期三", "星期四", "星期五", "星期六"];
}
function clock()
{
	today = new Date();
	h = today.getHours();
	m = today.getMinutes();
	s = today.getSeconds();
	var interval = today - startDate;
	var num = Math.floor(interval / (24*60*60*1000*7)) + 1;
	// 计算星期
	week = weeks[today.getDay()];
	// add a zero in front of numbers<10
	h = checkTime(h);
	m = checkTime(m);
	s = checkTime(s);
	document.getElementById('time').innerHTML= ' 第' + weAre9(num) + '周' + "     " + week + "  " +
                  	'<span class="time-font">' + h + ':' + m + ':' + s + '</span>';
	setTimeout('clock()', 1000);
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
