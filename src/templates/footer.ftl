<footer id="footer" role="contentinfo">

	<nav id="footer-recursive">
		<div class="container-fluid-1280">
			<div class="nav navbar-nav navbar-right small text-uppercase" role="menubar">
				<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone")>
				<@liferay.navigation_menu default_preferences="${freeMarkerPortletPreferences}" instance_id="footer_navigation_menu" />
				<#assign VOID = freeMarkerPortletPreferences.reset()>
			</div>
		</div>
	</nav>

</footer>