<!DOCTYPE html>

<#include init />
<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />

</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<@liferay.product_menu_sidebar state="${liferay_product_menu_state}" />

	<div id="wrapper">
		<div class="navbar-recursive">
			<nav class="navbar navbar-inverse">
				<div class="navbar-wrapper">
					<div class="container-fluid-1280">
						<ul class="hidden-xs nav navbar-nav">
							<li><a href="#">ATENCIÓN AL CLIENTE</a></li>
							<li><a href="#">OFICINAS Y CAJEROS</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<#assign VOID = velocityPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone")>
							<#call user_personal_bar>(${velocityPortletPreferences.toString()})

							<#assign VOID = velocityPortletPreferences.reset()>
						</ul>

						<#if !is_signed_in>
							<ul class="hidden-xs nav navbar-nav navbar-right">
								<li><a href="#">HAZTE CLIENTE</a></li>
							</ul>
						</#if>
					</div>
				</div>
			</nav>
		</div>

		<header class="container-fluid-1280" id="banner" role="banner">
			<div class="navbar-header" id="heading">
				<button aria-controls="navigation" aria-expanded="false" class="collapsed navbar-toggle" data-target="<#call navigationCollapse>" data-toggle="collapse" type="button">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

				<a class="${logo_css_class}" href="${site_default_url}" key="go-to-x" />" title="<@liferay.language_format arguments="${site_name}">
					<img alt="${logo_description}" height="56" src="${images_folder}/westeros-bank-logo.png" />
					<#--<img alt="$logo_description" height="56" src="$site_logo" />
-->				</a>

				<#--if ($show_site_name)
-->				<#--	<span class="site-name" title="#language_format ("go-to-x", [$site_name])">
-->				<#--		$site_name
-->				<#--	</span>
-->				<#--end
-->			</div>

			<#if has_navigation && is_setup_complete>
				<#include "${full_templates_path}/navigation.ftl" />
			</#if>

		</header>

		<main id="content" role="main">
			<#include "${full_templates_path}/TEMP-content.ftl" />
			<h1 class="hide-accessible">${the_title}</h1>

			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}
				${portletDisplay.setTitle(the_title)}
				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>
		</main>

		<#include "${full_templates_path}/footer.ftl" />

	</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>
