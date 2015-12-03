<!DOCTYPE html>

#parse ($init)

<html class="$root_css_class" dir="#language ("lang.dir")" lang="$w3c_language_id">

<head>
	<title>$the_title - $company_name</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	$theme.include($top_head_include)
</head>

<body class="$css_class">

#quick_access("#main-content")

$theme.include($body_top_include)

#control_menu()

#product_menu_sidebar($liferay_product_menu_state)

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
							#set ($VOID = $velocityPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone"))

							#user_personal_bar($velocityPortletPreferences.toString())

							#set ($VOID = $velocityPortletPreferences.reset())
						</ul>

						#if (!$is_signed_in)
							<ul class="hidden-xs nav navbar-nav navbar-right">
								<li><a href="#">HAZTE CLIENTE</a></li>
							</ul>
						#end
					</div>
				</div>
			</nav>
		</div>

		<header class="container-fluid-1280" id="banner" role="banner">
			<div class="navbar-header" id="heading">
				<button aria-controls="navigation" aria-expanded="false" class="collapsed navbar-toggle" data-target="#navigationCollapse" data-toggle="collapse" type="button">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

				<a class="$logo_css_class" href="$site_default_url" title="#language_format ("go-to-x", [$site_name])">
					<img alt="$logo_description" height="56" src="$images_folder/westeros-bank-logo.png" />
					##<img alt="$logo_description" height="56" src="$site_logo" />
				</a>

				##if ($show_site_name)
				##	<span class="site-name" title="#language_format ("go-to-x", [$site_name])">
				##		$site_name
				##	</span>
				##end
			</div>

			#if ($has_navigation && $is_setup_complete)
				#parse ("$full_templates_path/navigation.vm")
			#end
		</header>

		<main id="content" role="main">
			#parse ("$full_templates_path/TEMP-content.vm")

			<h1 class="hide-accessible">$the_title</h1>

			#if ($selectable)
				$theme.include($content_include)
			#else
				$portletDisplay.recycle()

				$portletDisplay.setTitle($the_title)

				$theme.wrapPortlet("portlet.vm", $content_include)
			#end
		</main>

		#parse ("$full_templates_path/footer.vm")

	</div>

$theme.include($body_bottom_include)

$theme.include($bottom_include)

</body>

</html>
