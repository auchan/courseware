courseware
==========

BUPT 2011级网络工程12班-课件索引

要编辑课件索引，直接编辑 cw/ 下的文件即可

cw/ 下的文件采用 xml 书写，格式介绍如下：

	<cw_info>     -- 根元素
	<cw>		  -- 课件块标识
	<name>		  -- 课件名称
	<url>		  -- 课件链接（请使用完整链接，e.g. http://google.com）
	<date>		  -- 日期块标识
		<year>	  -- 课件更新（下同）年份	
		<month>	  -- 月份
		<day>	  -- 天
		<hour>	  -- 小时	
		<minute>  -- 分钟
	<comment>	  -- 注释

一个 xml 例子

	<?xml version="1.0" encoding="UTF-8"?>
	<cw_info>
		<cw>
			<name>测试</name>
			<url>http://www.google.com</url>
			<date>
				<year>2013</year>
				<month>08</month>
				<day>22</day>															  <hour>13</hour>
				<minute>50</minute>
			</date>
			<comment>使用xml表示数据</comment>
		</cw>
	</cw_info>
