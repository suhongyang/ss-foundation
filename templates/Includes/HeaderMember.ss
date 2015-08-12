<% if $CurrentMember %>
	<li class="has-dropdown">
		<a href="{$BaseHref}/admin/myprofile">Hi $CurrentMember.FirstName</a>
		<ul class="dropdown">
			<li><a href="{$BaseHref}/admin/">Admin</a></li>
			<li><a href="{$BaseHref}/admin/myprofile">My Profile</a></li>
			<li><a href="{$BaseHref}/Security/logout">Logout</a></li>
		</ul>
	</li>
<% else %>
	<li><a href="{$BaseHref}/Security/login">Login</a></li>
<% end_if %>