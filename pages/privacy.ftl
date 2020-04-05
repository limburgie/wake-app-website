<#assign pp = api.query("privacy_policy").findOne()>

<div class="privacy">
	<h3>${pp.getText("title")}</h3>

	${pp.getRichText("description").html}

	<p>
		<a href="/">${pp.getText("back_link_label")}</a>
	</p>
</div>