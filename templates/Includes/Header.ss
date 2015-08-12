<header class="contain-to-grid" role="banner">

	<nav class="top-bar" data-topbar role="navigation">

		<%-- Title --%>
		<ul class="title-area">
			<li class="name">
				<h2><a href="$BaseHref">$SiteConfig.Title</a></h2>
			</li>
			<li class="show-for-sr">
				<a class="show-on-focus" href="#content">Skip to content</a>
			</li>
			<%-- Mobile Menu Toggle: remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone --%>
			<li class="toggle-topbar menu-icon"><a href=""><span>Menu</span></a></li>
		</ul>

		<%-- Top Bar section --%>
		<section class="top-bar-section">

			<%-- Top Bar left nav elements --%>
			<% if $SearchForm %>
				<ul class="left">

					<%-- Search | has-form wrapper --%>
					<li class="has-form">
						<div class="row collapse">
							$SearchForm
						</div>
					</li>
				</ul>
			<% end_if %>

			<%-- Top Bar right nav elements --%>
			<ul class="right">
				<% include HeaderNav %>
				<% include HeaderMember %>
			</ul>

		</section>

	</nav>

</header>