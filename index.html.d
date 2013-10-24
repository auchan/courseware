<!DOCTYPE html>
<html>
	<head>
		<meta charset='utf-8'>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel='stylesheet' type='text/css' href='https://fonts.googleapis.com/css?family=Architects+Daughter' />
		<link rel="stylesheet" type="text/css" href="stylesheets/stylesheet.css" media="screen" />
		<link rel="shortcut icon" href="favicon.ico" >
		<script src="javascripts/expansion.js"></script>
		<script src="javascripts/clock.js"></script>
		<script src="javascripts/browserInfo.js"></script>
		<script src="javascripts/load_cw_info.js"></script>
		<!--[if lt IE 9]>
		<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<title>Index of courseware</title>
		<style>
		aside code{
			  background-color: #eee;
				border: solid 1px #dbe7f3;
				padding: 0 3px;
		}
		aside .gist .gist-file .gist-data{
			background-color: #eee;
		}
		</style>
	</head>
	<body onload="init()" class="myscrollbar">
		<header>
			<div class="inner">
				<div id="time"></div>
				<a href="https://github.com/auchan/courseware" class="button" style="display:none;"><small>View project on</small>GitHub</a>
			</div>
		</header>
		<div id="content-wrapper">
			<div class="inner clearfix">
				 <section id="main-content">
					<div class="cw_block">
					<a href="###" class="button" onclick="openShutManager(this,'grade3-1',false,'大三上学期 [ - ]','大三上学期 [+]')">大三上学期 [ - ]</a>
					<div id="grade3-1">
						<ul id="cw_g3_s1">等待加载中...</ul>
						<!-- 立即加载本学期课件-->
						<script>
						loadXMLDoc("cw/cw_info_4.xml", "cw_g3_s1");
						</script>
					</div>
					</div>
					
					<div class="cw_block">
					<a href="###" class="button" onclick="openShutManager(this,'grade2-2',false,'大二下学期 [ - ]','大二下学期 [+]')">大二下学期 [+]</a>
					<div id="grade2-2" style="display:none">	
						<!-- 目录内容 -->
						<ul id="cw_g2_s2">等待加载中...</ul>
					</div>
					</div>
				</section>

				<aside id="sidebar" >
					<div id="browserInfo" style="color: #faa;"></div>
<<<<<<< HEAD
					<div id="mymessage">
=======
					<div class="mymessage">
>>>>>>> ac48db4815f549ea9a4234d60f39209ca385ea52
					<script src="https://gist.github.com/auchan/f4b5d75f0795042851bb.js"></script>
					</div>
					<div class="comment">
					<a href="###" class="button" onclick="openShutManager(this,'box2',false,'关闭留言','我要留言')">我要留言</a>
					</div>
					<div id="box2" style="display:none">	
					<!-- UY BEGIN -->
					<div id="uyan_frame"></div>
					<script type="text/javascript" src="http://v2.uyan.cc/code/uyan.js?uid=1847549"></script>
					<!-- UY END -->
					</div>
				</aside>
			</div>
		</div>
		<footer>
		<a href=".">CS'2011 Class 12, BUPT</a> &copy; 2013 auchan 
		</footer>
		<script>
		function init()
		{		
			loadXMLDoc("cw/cw_info_3.xml", "cw_g2_s2");
			showBrowserInfo();
			startTime();
		}
		</script>
	</body>
</html>
