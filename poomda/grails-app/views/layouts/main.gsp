<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="Keywords" content="품다, 포인핸드, 유기동물, 유기동물보호소, 유기동물봉사활동, 유기동물후원, 유기동물찾기, 유기동물입양">
		<meta name="Description" content="품다, 포인핸드, 유기동물">
		<meta name="Author" content="PoomDa">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="PoomDa"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
  		<asset:stylesheet src="common.css"/>
  		<asset:stylesheet src="layout.css"/>
		<asset:javascript src="application.js"/>
		<asset:javascript src="sub.js"/>
		<g:layoutHead/>
	</head>
	<body>
		<g:render template="/layouts/header" />	 
		<g:render template="/layouts/top" />	
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:render template="/layouts/message" />	
		<g:render template="/layouts/footer" />	
	</body>
</html>
