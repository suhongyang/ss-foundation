<% loop Menu(1) %>
	<li class="divider"></li>
	<li class="<% if $LinkingMode == "current" || $LinkingMode == "section" %>active<% end_if %><% if $Children %> has-dropdown<% end_if %>" role="menuitem">
		<a href="$Link" title="Go to $Title.XML">$MenuTitle.XML</a>
		<% if $Children %>
			<ul class="dropdown">
				<% include HeaderNavItems %>
			</ul>
		<% end_if %>
	</li>
<% end_loop %>