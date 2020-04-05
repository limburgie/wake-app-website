<#assign info = api.query("general_info").findOne()>
<#assign pp = api.query("privacy_policy").findOne()>

<!doctype html>
<html lang="en">
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="//stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
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
	&copy ${.now?string('yyyy')} <a target="_blank" href="https://www.web-factor.be">Web Factor</a> - <a href="/privacy">${pp.getText("title")}</a>
</footer>



<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="//code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="//cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="//stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>