function showBrowserInfo() {
    var ua = navigator.userAgent; 
    var browser = "MSIE"; 
    var i = ua.indexOf(browser);      
    if (i >= 0) { 
		//获取IE版本号 
		var ver = parseFloat(ua.substr(i + browser.length)); 
		browser = "IE " + ver;
	} 
	else 
	{
		// IE 11+ 无法正常识别
		//其他情况，不是IE 
        browser = "Chrome";
        i = ua.indexOf(browser);  
		if (i >= 0)
		{
			var ver = ua.substr(i + browser.length); 
			browser += " " + ver;
		}
		else{
			browser = "Firefox";
			i = ua.indexOf(browser);
			if (i >= 0)
			{
				var ver = ua.substr(i + browser.length); 
				browser += " " + ver;
			}
			else
				browser = "";
		}

	}
	var os_logo = "Windows";
    i = ua.indexOf(os_logo + " NT");
	var os = " ";
	if ( i >= 0)
    {
        var os_type = parseFloat(ua.substr(i + (os_logo + " NT").length));
        var os_type_p;
        switch (os_type)
		{
            case 5.0: os_type_p = "2000"; break;
			case 5.1: os_type_p = "xp"; break;
			case 6.0: os_type_p = "vista"; break;
			case 6.1: os_type_p = "7"; break;
			case 6.2: os_type_p = "8"; break;
            default: os_type_p = " ";
        } 
		os = os_logo + " " + os_type_p;
    }
	platform = navigator.platform;
	document.getElementById('browserInfo').innerHTML = browser + " " + os + " "	+ platform;
}
