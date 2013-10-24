/* http://meyerweb.com/eric/tools/css/reset/ 
   v2.0 | 20110126
   License: none (public domain)
*/
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}

/* LAYOUT STYLES */
body {
  font-size: 15px;
  line-height: 1.5; 
  /* background: #fafafa url(../images/body-bg.jpg) 0 0 no-repeat; */
  font-family: 'Helvetica Neue', Helvetica, Arial, serif;
  font-weight: 400;
  color: #666;
}

a{color:#007bc4/*#424242*/; text-decoration:none;}
a:hover{text-decoration:underline}

header {
  padding-top: 40px;
  padding-bottom: 40px;
  font-family: 'Architects Daughter', 'Helvetica Neue', Helvetica, Arial, serif; 
  background: #eee url(../images/header-bg.jpg) 0 0 no-repeat;
  border-bottom: solid 1px #275da1;
  background-position: center center;
}

#time{
	color: #000;
	margin-left:20%;
	font-size: 26px;
    font-weight: normal;
    line-height: 1.3;
    letter-spacing: 0;
	width: 500px;
}

header h1 {
  letter-spacing: -1px;
  font-size: 72px;
  color: #fff;
  line-height: 1;
  margin-bottom: 0.2em;
  width: 540px;
}

header h2 {
  font-size: 26px;
  color: #9ddcff;
  font-weight: normal;
  line-height: 1.3;
  width: 540px;
  letter-spacing: 0;
}

.inner {
  position: static;
  width: 85%;
  margin: 0 0 0 15%;
}
/* TAG_CLOUD*/
#div1 {position:relative; width:300px; height:250px; margin: 20px auto 0; alignment-adjust:central}
#div1 a {position:absolute; top:0px; left:0px; font-family: Microsoft YaHei; color:#66ccff; font-weight:bold; text-decoration:none; padding: 3px 6px; }
#div1 a:hover {border: 1px solid #eee; background: #777; }
#div1 .blue {color:blue;}
#div1 .red {color:red;}
#div1 .yellow {color:yellow;}
/* END OF TAG_CLOUD */
#content-wrapper {
  border-top: solid 2px #66eee;
  padding-top: 25px;
}

#main-content {
  width: 60%;
  min-height: 540px;
  float: left;
  border: 1px solid #ccc;
  -webkit-border-radius: 6px;-moz-border-radius: 6px;border-radius: 6px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);-moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}

#main-content img {
  max-width: 60%;
}

.cw_line{
  display:block;
  position: relative;
  width: 98%;
  z-index: 1000;float: left;
  min-width: 120px;padding: 5px 0;margin: 2px 0 20px 2px;list-style: none;
  background-color: #ffffff;border: 1px solid #ccc;
  -webkit-border-radius: 6px;-moz-border-radius: 6px;border-radius: 6px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);-moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}

.cw_line a{display:inline;}
.cw_line a:hover,.maintainHover{color:#fff; text-decoration:none; background:#39f}

.cw_title{
    float: left;
    position: relative;
	width: 222px;	
	display: inline;
}

#mymessage{
    max-height: 500px;
<<<<<<< HEAD
	overflow: auto;
=======
	overflow:hidden;
>>>>>>> ac48db4815f549ea9a4234d60f39209ca385ea52
	float: left;
	position: relative;
	display: block;
	width: 95%;
	height: 400px;
	border: 1px solid #aaa;
	padding: 4px 4px 4px 4px;
	border-radius: 6px;
<<<<<<< HEAD
}
#mymessage code {
  background-color: #ccc;
  border: solid 1px #dbe7f3;
  padding: 0 3px;
}
#mymessage p{
	font-size: 15px;
	color: rgb(100,100,100);
}

.myscrollbar {
scrollbar-arrow-color: #f4ae21; /*图6,三角箭头的颜色*/
scrollbar-face-color: #333; /*图5,立体滚动条的颜色*/
scrollbar-3dlight-color: #666; /*图1,立体滚动条亮边的颜

色*/
scrollbar-highlight-color: #666; /*图2,滚动条空白部分的

颜色*/
scrollbar-shadow-color: #999; /*图3,立体滚动条阴影的颜

色*/
scrollbar-darkshadow-color: #666; /*图4,立体滚动条强阴

影的颜色*/
scrollbar-track-color: #666; /*图7,立体滚动条背景颜色*/

scrollbar-base-color:#f8f8f8; /*滚动条的基本颜色*/
Cursor:url(mouse.cur); /*自定义个性鼠标*/
}

=======
}
Body {
scrollbar-arrow-color: #f4ae21;  /*图6,三角箭头的颜色*/
scrollbar-face-color: #333;  /*图5,立体滚动条的颜色*/
scrollbar-3dlight-color: #666;  /*图1,立体滚动条亮边的颜

色*/
scrollbar-highlight-color: #666;  /*图2,滚动条空白部分的

颜色*/
scrollbar-shadow-color: #999;  /*图3,立体滚动条阴影的颜

色*/
scrollbar-darkshadow-color: #666;  /*图4,立体滚动条强阴

影的颜色*/
scrollbar-track-color: #666;  /*图7,立体滚动条背景颜色*/

scrollbar-base-color:#f8f8f8;  /*滚动条的基本颜色*/
Cursor:url(mouse.cur);  /*自定义个性鼠标*/
}


>>>>>>> ac48db4815f549ea9a4234d60f39209ca385ea52
.comment{
height:100px;
float: left;
position: relative;
display: block;
margin: 2px 2px 2px 2px;
}

.cw_block{
	padding: 2px 2px 2px 2px;
	display: block;
	float:left;
	width: 100%;
}

li date{
  font-family: Monaco, "Bitstream Vera Sans Mono", "Lucida Console", Terminal, monospace;
  color: #222;
  margin-bottom: 30px;
  font-size: 13px;
  //background-color: #f2f8fc;
  //border: 1px dotted #66ccff;
  padding: 0 3px;
  position: relative;
}

aside#sidebar {
  width:37%;
  padding-left: 1%;
  margin-right: 1%;
  min-height: 504px;
  float: left;
  /* background: transparent url(../images/sidebar-bg.jpg) 0 0 no-repeat; */
  font-size: 12px;
  line-height: 1.8;
  border: 1px solid #ccc;
  -webkit-border-radius: 6px;-moz-border-radius: 6px;border-radius: 6px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);-moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}

aside#sidebar p.repo-owner,
aside#sidebar p.repo-owner a {
  font-weight: bold;
}

#downloads {
  margin-bottom: 40px;
}

a.button {
  width: 134px;
  height: 58px;
  line-height: 1.2;
  font-size: 23px;
  color: #fff;
  padding-left: 68px;
  padding-top: 22px;
  font-family: 'Architects Daughter', 'Helvetica Neue', Helvetica, Arial, serif; 
}
a.button small {
  display: block;
  font-size: 11px;
}
header a.button {
  position: absolute;
  right: 0;
  top: 0;
  background: transparent url(../images/github-button.png) 0 0 no-repeat;
}

aside a.button {
  width: 80px;
  height: 20px;
  line-height: 1.0;
  font-size: 14px;
  background-color: #88aadd;
  padding-left: 2px;
  padding-top: 5px;
  font-family: 'Architects Daughter', 'Helvetica Neue', Helvetica, Arial, serif; 
    -webkit-border-radius: 6px;-moz-border-radius: 6px;border-radius: 6px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);-moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  margin: 2px 2px 2px 2px;
  margin-top: 2px;
  float:left;
  text-align:center;
}
aside a:hover,.maintainHover{color:#fff; text-decoration:none; background:#99f}
section a.button {
  width: 160px;
  height: 28px;
  line-height: 1.2;
  font-size: 20px;
  background-color: #88aadd;
  padding-left: 2px;
  padding-top: 2px;
  margin-top: 8px;
  margin-left: 4px;
  margin-bottom: 10px;
  font-family: 'Architects Daughter', 'Helvetica Neue', Helvetica, Arial, serif; 
    -webkit-border-radius: 6px;-moz-border-radius: 6px;border-radius: 6px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);-moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  float: left;
}
section a:hover,.maintainHover{color:#fff; text-decoration:none; background:#99f}

code, pre {
  font-family: Monaco, "Bitstream Vera Sans Mono", "Lucida Console", Terminal, monospace;
  color: #222;
  margin-bottom: 30px;
  font-size: 13px;
}

code {
  background-color: #f2f8fc;
  border: solid 1px #dbe7f3;
  padding: 0 3px;
}

pre {
  padding: 20px;
  background: #fff;
  text-shadow: none;
  overflow: auto;
  border: solid 1px #f2f2f2;
}
pre code {
  color: #2879d0;
  background-color: #fff;
  border: none;
  padding: 0;
}

ul, ol, dl {
  margin-bottom: 20px;
}


/* COMMON STYLES */

hr {
  height: 1px;
  line-height: 1px;
  margin-top: 1em;
  padding-bottom: 1em;
  border: none;
  background: transparent url('../images/hr.png') 0 0 repeat-x;
}

table {
  width: 100%;
  border: 1px solid #ebebeb;
}

th {
  font-weight: 500;
}

td {
  border: 1px solid #ebebeb;
  text-align: center; 
  font-weight: 300;
}

form {
  background: #f2f2f2;
  padding: 20px;
  
}


/* GENERAL ELEMENT TYPE STYLES */

#main-content h1 {
  font-family: 'Architects Daughter', 'Helvetica Neue', Helvetica, Arial, serif; 
  font-size: 2.8em;
  letter-spacing: -1px;
  color: #474747;
} 

#main-content h1:before {
  content: "/";
  color: #9ddcff;
  padding-right: 0.3em;
  margin-left: -0.9em;
}

#main-content h2 {
  font-family: 'Architects Daughter', 'Helvetica Neue', Helvetica, Arial, serif; 
  font-size: 22px;
  font-weight: bold;
  margin-bottom: 8px;
  color: #474747;
} 
#main-content h2:before {
/*  content: "//"; */
  color: #9ddcff;
  padding-right: 0.3em;
  margin-left: -1.5em;
}

#main-content h3 {
  font-family: 'Architects Daughter', 'Helvetica Neue', Helvetica, Arial, serif; 
  font-size: 18px;
  font-weight: bold;
  margin-top: 24px;
  margin-bottom: 8px;
  color: #474747;
} 
 
#main-content h3:before {
 /* content: "///"; */
  color: #9ddcff;
  padding-right: 0.3em;
  margin-left: -2em;
}
#sidebar  h3 {
  font-size: 18px;
  font-weight: bold;
} 

#main-content h4 {
  font-family: 'Architects Daughter', 'Helvetica Neue', Helvetica, Arial, serif; 
  font-size: 15px;
  font-weight: bold;
  color: #474747;
} 

h4:before {
  content: "////";
  color: #9ddcff;
  padding-right: 0.3em;
  margin-left: -2.8em;
}

#main-content h5 {
  font-family: 'Architects Daughter', 'Helvetica Neue', Helvetica, Arial, serif; 
  font-size: 14px;
  color: #474747;
} 
h5:before {
  content: "/////";
  color: #9ddcff;
  padding-right: 0.3em;
  margin-left: -3.2em;
}

#main-content h6 {
  font-family: 'Architects Daughter', 'Helvetica Neue', Helvetica, Arial, serif; 
  font-size: .8em;
  color: #474747;
} 
h6:before {
  content: "//////";
  color: #9ddcff;
  padding-right: 0.3em;
  margin-left: -3.7em;
}

p {
  margin-bottom: 20px;
}
 
a {
  text-decoration: none;
}

p a {
  font-weight: 400;
}

blockquote {
  font-size: 1.6em;
  border-left: 10px solid #e9e9e9;
  margin-bottom: 20px;
  padding: 0 0 0 30px;
}

ul li {
  list-style: disc inside;
  padding-left: 20px;
}

ol li {
  list-style: decimal inside;
  padding-left: 3px;
}

dl dd {
  font-style: italic;
  font-weight: 100;
}

footer {
  /* background: transparent url('../images/hr.png') 0 0 no-repeat; */
  margin-top: 40px
  padding-top: 20px;
  padding-bottom: 30px;
  font-size: 13px;
  color: #33aaaa;
  width: 100%;
  margin：auto;
  text-align:center; 
}

footer a {
  color: #666;
}
footer a:hover {
  color: #444;
}

/* MISC */
.clearfix:after {
  clear: both;
  content: '.';
  display: block;
  visibility: hidden;
  height: 0;
}

.clearfix {display: inline-block;}
* html .clearfix {height: 1%;}
.clearfix {display: block;}

/* #Media Queries
================================================== */

/* Smaller than standard 960 (devices and browsers) */
@media only screen and (max-width: 959px) {}

/* Tablet Portrait size to standard 960 (devices and browsers) */
@media only screen and (min-width: 768px) and (max-width: 959px) {
  .inner {
    width: 740px;
  }
  header h1, header h2 {
    width: 340px;
  }
  header h1 {
    font-size: 60px;
  }
  header h2 {
    font-size: 30px;
  }
  #main-content {
    width: 490px;
  }
  #main-content h1:before,
  #main-content h2:before,
  #main-content h3:before,
  #main-content h4:before,
  #main-content h5:before,
  #main-content h6:before {
    content: none;
    padding-right: 0;
    margin-left: 0;
  }
}

/* All Mobile Sizes (devices and browser) */
@media only screen and (max-width: 767px) {
  .inner {
    width: 93%;
  }
  header {
    padding: 20px 0;
  }
  header .inner {
    position: relative;
  }
  header h1, header h2 {
    width: 100%;
  }
  header h1 {
    font-size: 48px;
  }
  header h2 {
    font-size: 24px;
  }
  header a.button {
    background-image: none;
    width: auto;
    height: auto;
    display: inline-block;
    margin-top: 15px;
    padding: 5px 10px;
    position: relative;
    text-align: center;
    font-size: 13px;
    line-height: 1;
    background-color: #9ddcff;
    color: #2879d0;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;                     
    border-radius: 5px;    
  }
  header a.button small {
    font-size: 13px;
    display: inline;
  }
  #main-content,
  aside#sidebar {
    float: none;
    width: 100% ! important;
  }
  aside#sidebar {
    background-image: none;
    margin-top: 20px;
    border-top: solid 1px #ddd;
    padding: 20px 0;
    min-height: 0;
  }
  aside#sidebar a.button {
    display: none;
  }
  #main-content h1:before,
  #main-content h2:before,
  #main-content h3:before,
  #main-content h4:before,
  #main-content h5:before,
  #main-content h6:before {
    content: none;
    padding-right: 0;
    margin-left: 0;
  }
}

/* Mobile Landscape Size to Tablet Portrait (devices and browsers) */
@media only screen and (min-width: 480px) and (max-width: 767px) {}

/* Mobile Portrait Size to Mobile Landscape Size (devices and browsers) */
@media only screen and (max-width: 479px) {}
