<#assign info = api.query("general_info").findOne()>
<#assign pp = api.query("privacy_policy").findOne()>

<div class="store-links d-flex justify-content-around flex-wrap">
	<#list info.getGroup("app_download_buttons") as download_button>
		<a href="${download_button.getWebLink("url")?has_content?then(download_button.getWebLink("url"), '#')}" class="store-link">
			<img src="${download_button.getImage("image").url}"/>
		</a>
	</#list>
</div>

<div class="d-flex justify-content-around flex-wrap">
	<#list info.getGroup("app_screenshots") as screenshot>
		<div class="step">
			<div class="d-flex flex-row align-items-center">
				<h3>${screenshot.getText("title")}</h3>
				<p>${screenshot.getText("description")}</p>
			</div>

			<img class="img-fluid" src="${screenshot.getImage("image").url}"/>
		</div>
	</#list>
</div>