<%--Include SideNavItems recursively --%>
<% if LinkOrSection = section %>
	<% if $Children %>
		<% loop $Children %>
			<li<% if $LinkingMode == 'section' || $LinkingMode == 'current' %> class="active"<% end_if %> role="menuitem">
				<a href="$Link" title="Go to the $Title.XML page">
					$MenuTitle.XML
				</a>

				<% if $Children %>
					<ul>
						<% include SidebarMenu %>
					</ul>
				<% end_if %>

			</li>
		<% end_loop %>
	<% end_if %>
<% end_if %>