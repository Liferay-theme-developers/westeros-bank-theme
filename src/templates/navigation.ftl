<div aria-expanded="true" class="navbar-collapse" id="navigationCollapse">
	<nav id="search" role="navigation">
		<div class="navbar-form navbar-right" role="search">
			<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone")>
			<@liferay.search default_preferences="${freeMarkerPortletPreferences}" />
			<#assign VOID = freeMarkerPortletPreferences.reset()>
		</div>
	</nav>

	<nav id="global" role="navigation">
		<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone")>
		<ul class="nav navbar-nav">
			<@liferay.navigation_menu default_preferences="${freeMarkerPortletPreferences}" />
		</ul>
		<#assign VOID = freeMarkerPortletPreferences.reset()>
	</nav>

	<nav class="${nav_css_class} site-navigation" id="navigation" role="navigation">
		<h1 class="hide-accessible"><@liferay.language key="navigation" /></h1>
		<ul aria-label="<@liferay.language key="site-pages" />" class="nav nav-justified navbar-site" role="menubar">
			<@liferay.navigation_menu default_preferences="${freeMarkerPortletPreferences}" />
		</ul>
	</nav>
</div>

<script>
	Liferay.Data.NAV_INTERACTION_LIST_SELECTOR = '.navbar-site';
	Liferay.Data.NAV_LIST_SELECTOR = '.navbar-site';
</script>