<!doctype html>

<%-- Extensive html conditional classes --%>
<!--[if lt IE 7]>  <html class="ie ie6 lte9 lte8 lte7"> <![endif]-->
<!--[if IE 7]>     <html class="ie ie7 lte9 lte8 lte7"> <![endif]-->
<!--[if IE 8]>     <html class="ie ie8 lte9 lte8"> <![endif]-->
<!--[if IE 9]>     <html class="ie ie9 lte9"> <![endif]-->
<!--[if gt IE 9]>  <html> <![endif]-->
<!--[if !IE]><!--> <html> <!--<![endif]-->

<head>
	<% base_tag %>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> - $SiteConfig.Title</title>
	<% require themedCSS('app') %>

	<%-- IE8 support for Foundation --%>
	<!--[if lt IE 9]>
		<%-- html5shiv.js, selectivizr.js, respond.js --%>
		<script src="{$ThemeDir}/node_modules/lt-ie-9.min.js"></script>

		<%-- CSS3 selector and matcher --%>
		<script src="{$ThemeDir}/node_modules/nwmatcher/src/nwmatcher.js"></script>
	<![endif]-->

</head>

<body>

	<% include Header %>

	$Layout

	<% include Footer %>

	<%-- Empty script tag for SilverStripe JS requirement --%>
	<script></script>

	<%-- TODO: Please move JavaScripts below to mysite/code/page.php --%>
	<script src="{$ThemeDir}/node_nodules/jquery/jquery.min.js"></script>
	<script src="{$ThemeDir}/node_nodules/foundation-sites/js/foundation.min.js"></script>
	<script src="{$ThemeDir}/javascript/app.js"></script>

</body>
</html>