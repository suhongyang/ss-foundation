<% if $Menu(2) %>
	<nav>
		<% with $Level(1) %>
			<h4>$MenuTitle</h4>
			<ul class="side-nav" role="navigation" title="Side navigation">
				<% include SideNavItems %>
			</ul>
		<% end_with %>
	</nav>
<% end_if %>
