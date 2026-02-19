<#assign info = api.query("general_info").findOne()>
<#assign pp = api.query("privacy_policy").findOne()>

<!doctype html>
<html lang="${request.locale.language}">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="icon" type="image/png" href="/assets/img/favicon/favicon-96x96.png" sizes="96x96" />
	<link rel="icon" type="image/svg+xml" href="/assets/img/favicon/favicon.svg" />
	<link rel="shortcut icon" href="/assets/img/favicon/favicon.ico" />
	<link rel="apple-touch-icon" sizes="180x180" href="/assets/img/favicon/apple-touch-icon.png" />
	<meta name="apple-mobile-web-app-title" content="SleepTrainer" />
	<link rel="manifest" href="/assets/img/favicon/site.webmanifest" />

	<link rel="stylesheet" href="//stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:400,900&display=swap">
	<link rel="stylesheet" href="/assets/css/main.css">

	<title>${info.getText("app_name")}</title>
</head>
<body>

<div class="container h-100">
	<div class="row h-100 justify-content-center align-items-center">
		<div class="col-12">
			<h1>${info.getText("app_name")}</h1>

			<h2>${info.getText("app_subtitle")}</h2>

			${inserts.body}
		</div>
	</div>
</div>

<footer>
	&copy ${.now?string('yyyy')} <a target="_blank" href="https://www.web-factor.be">Web Factor</a> -
    <a target="_blank" href="mailto:peter@web-factor.be">peter@web-factor.be</a> - 
	<a href="${uri.of("privacy")}">${pp.getText("title")}</a> -
	<#if request.locale.language == "nl">
	    <a href="/en">EN</a>
	<#else>
	    <a href="/nl">NL</a>
	</#if>
</footer>
</body>
</html>