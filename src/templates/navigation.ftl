<div aria-expanded="false" class="collapse navbar-collapse" id="navigationCollapse">
	<nav id="search" role="navigation">
		<div class="navbar-form navbar-right" role="search">
			<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone")>
			<@liferay.search default_preferences="${freeMarkerPortletPreferences}" />
			<#assign VOID = freeMarkerPortletPreferences.reset()>
		</div>
	</nav>

	<nav id="global" role="navigation">
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Para ti</a></li>
			<li><a href="#">Para negocio</a></li>
		</ul>
	</nav>

	<nav class="${nav_css_class} site-navigation" id="navigation" role="navigation">
		<ul aria-label="<@liferay.language key="site-pages" />" class="nav nav-justified navbar-site" role="menubar">
			<h1 class="hide-accessible"><@liferay.language key="navigation" /></h1>

			<#foreach nav_item in nav_items>
				<#assign nav_item_attr_selected = "">
				<#assign nav_item_attr_has_popup = "">
				<#assign nav_item_caret = "">
				<#assign nav_item_css_class = "lfr-nav-item">
				<#assign nav_item_href_link = "">
				<#assign nav_item_link_css_class = "">
				<#assign nav_item_layout = nav_item.getLayout() />

				<#if nav_item.hasChildren()>
					<#assign nav_item_attr_has_popup = "aria-haspopup='true'">
					<#assign nav_item_caret = "<i class=\"icon-caret-down\"></i>">
					<#assign nav_item_css_class = nav_item_css_class + " dropdown">
					<#assign nav_item_link_css_class = "dropdown-toggle">
				</#if>

				<#if nav_item.isBrowsable()>
					<#assign nav_item_href_link = "href='" + nav_item.getURL() + "'">
				</#if>

				<#if nav_item.isSelected()>
					<#assign nav_item_attr_selected = "aria-selected='true'">
					<#assign nav_item_css_class = nav_item_css_class + " selected active">
				</#if>

				<li class="${nav_item_css_class}" id="layout_${nav_item.getLayoutId()}" ${nav_item_attr_selected} role="presentation">
					<a aria-labelledby="layout_${nav_item.getLayoutId()}" ${nav_item_attr_has_popup} class="${nav_item_link_css_class}" ${nav_item_href_link} ${nav_item.getTarget()} role="menuitem">
						<span><@liferay_theme["layout-icon"] layout=nav_item_layout /> ${nav_item.getName()}</span>
						${nav_item_caret}
					</a>

					<#if nav_item.hasChildren()>
						<ul aria-expanded="false" class="child-menu dropdown-menu" role="menu">
							<#foreach nav_child in nav_item.getChildren()>
								<#assign nav_child_attr_selected = "">
								<#assign nav_child_css_class = "lfr-nav-item">
								<#assign nav_child_href_link = "">

								<#if nav_child.isBrowsable()>
									<#assign nav_child_href_link = "href='" + nav_child.getURL() + "'">
								</#if>

								<#if nav_child.isSelected()>
									<#assign nav_child_attr_selected = "aria-selected='true'">
									<#assign nav_child_css_class = "active selected">
								</#if>
								<li class="${nav_child_css_class}" id="layout_${nav_child.getLayoutId()}" ${nav_child_attr_selected} role="presentation">
									<a aria-labelledby="layout_${nav_child.getLayoutId()}" ${nav_child_href_link} ${nav_child.getTarget()} role="menuitem">${nav_child.getName()}</a>
								</li>
							</#foreach>
						</ul>
					</#if>
				</li>
			</#foreach>
		</ul>
	</nav>
</div>

<script>
	Liferay.Data.NAV_INTERACTION_LIST_SELECTOR = '.navbar-site';
	Liferay.Data.NAV_LIST_SELECTOR = '.navbar-site';
</script>