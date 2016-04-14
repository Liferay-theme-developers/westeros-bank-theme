<div aria-expanded="true" class="collapse navbar-collapse" id="navigationCollapse">
	<nav id="search" role="navigation">
		<div class="navbar-form navbar-right" role="search">
			<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone")>

			<@liferay.search default_preferences="${freeMarkerPortletPreferences}" />

			<#assign VOID = freeMarkerPortletPreferences.reset()>
		</div>
	</nav>
	<nav class="nav-header-global" role="navigation">
		<ul class="nav navbar-nav">
			<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone")>

			<@liferay.navigation_menu default_preferences="${freeMarkerPortletPreferences}" instance_id="header_navigation_menu" />

			<#assign VOID = freeMarkerPortletPreferences.reset()>
		</ul>
	</nav>
	<nav class="navbar-nav site-navigation" id="navigation" role="navigation">
		<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone")>
		<#assign VOID = freeMarkerPortletPreferences.setValue("displayStyle", "ddmTemplate_NAVBAR-BLANK-JUSTIFIED-FTL")>

		<@liferay.navigation_menu default_preferences="${freeMarkerPortletPreferences}" instance_id="main_navigation_menu" />

		<#assign VOID = freeMarkerPortletPreferences.reset()>
	</nav>
</div>