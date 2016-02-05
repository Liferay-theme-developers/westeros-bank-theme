<footer id="footer" role="contentinfo">

	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<h2 class="h6 text-uppercase">Wings cultivar variety</h2>
			</div>
		</div>
		<div class="row" id="footer-modules">
			<div class="col-sm-6">
				<div class="mod-footer">
					<div class="icon-phone user-icon user-icon-xl"></div>
					<div class="txt">
						<h3><a href="#">901 020 901</a></h3>
						<div class="content">
							<p>+ 34 916 349 280 instant chicory</p>
						</div>
					</div>
				</div>
				<div class="mod-footer">
					<div class="icon-home user-icon user-icon-xl"></div>
					<div class="txt">
						<h3><a href="#">Sit steamed irish</a></h3>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="mod-footer">
					<div class="icon-paper-clip user-icon user-icon-xl"></div>
					<div class="txt">
						<h3><a href="#">Sugar, steamed et variety</a></h3>
					</div>
				</div>
				<div class="mod-footer">
					<div class="icon-briefcase user-icon user-icon-xl"></div>
					<div class="txt">
						<h3><a href="#">Ut acerbic barista</a></h3>
					</div>
				</div>
			</div>
		</div>
	</div>

	<nav id="footer-recursive">
		<div class="container">
			<ul class="nav navbar-nav navbar-right small text-uppercase" role="menubar">
				<#if !is_signed_in>
					<li role="presentation">
						<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
					</li>
				</#if>
				<#--<#foreach nav_item in nav_items>
					<li role="presentation">
						<a aria-labelledby="layout_${nav_item.getLayoutId()}" href="${nav_item.getURL()}" ${nav_item.getTarget()} role="menuitem">
							${nav_item.getName()}
						</a>
					</li>
				</#foreach>-->
			</ul>
		</div>
	</nav>

	<div class="container">
		<p><small><@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a></small></p>
	</div>

</footer>