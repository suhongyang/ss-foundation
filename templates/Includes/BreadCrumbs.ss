<% if $Level(2) %>
	<nav aria-label="breadcrumbs" class="breadcrumbs" role="menubar">
		<% loop Pages %>
			<% if Last %>
				<li role="menuitem" class="current">$Title.XML</li>
			<% else %>
				<li role="menuitem">
					<a href="$Link">$MenuTitle.XML</a>
				</li>
			<% end_if %>
		<% end_loop %>
	</nav>
<% end_if %>