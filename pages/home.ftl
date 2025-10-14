<#assign info = api.query("general_info").findOne()>
<#assign contact = api.query("contact").findOne()>
<#assign pp = api.query("privacy_policy").findOne()>

<div class="store-links d-flex justify-content-around flex-wrap">
    <#list info.getGroup("app_download_buttons") as download_button>
		<a href="${download_button.getWebLink("url")?has_content?then(download_button.getWebLink("url"), '#')}" class="store-link">
			<img src="${download_button.getImage("image").url}"/>
		</a>
    </#list>
</div>

<div class="row my-5">
	<div class="col-md-8 offset-md-2 my-5">
		<div class="embed-responsive embed-responsive-16by9">
			<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/${info.getText("youtube_code")}?rel=0" allowfullscreen></iframe>
		</div>
	</div>
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

<div id="contact" class="privacy">
    <h3>${contact.getText("title")}</h3>

    ${contact.getRichText("description").html}

    <form action="mailto:peter@web-factor.be" target="_blank">
        <textarea id="message" name="body" class="form-control" rows="6" placeholder="${i18n["your-feedback-here"]}"></textarea>
        <input type="hidden" name="subject" value="Sleep Trainer feedback">
        <button type="submit" class="btn btn-lg btn-theme">${i18n["send"]}</button>
    </form>
</div>