<div class="row">

	<main class="large-9 push-3 columns" role="main">

		<article class="results" id="content">
			<h1>$Title</h1>

			<% if $Query %>
				<p class="searchQuery">You searched for &quot;{$Query}&quot;</p>
			<% end_if %>

			<% if $Results %>
				<ul>
					<% loop $Results %>
						<li>
							<h4>
								<a href="$Link">
									<% if $MenuTitle %>
										$MenuTitle
									<% else %>
										$Title
									<% end_if %>
								</a>
							</h4>
							<% if $Content %>
								<p>$Content.LimitWordCountXML</p>
							<% end_if %>
							<a class="readMoreLink" href="$Link" title="Read more about &quot;{$Title}&quot;">Read more about &quot;{$Title}&quot;...</a>
						</li>
					<% end_loop %>
				</ul>
			<% else %>
				<p>Sorry, your search query did not return any results.</p>
			<% end_if %>

			<%-- Pagination --%>
			<% if $Results.MoreThanOnePage %>
				<ul aria-label="Pagination" class="pagination" role="menubar">
					<li<% if $Results.FirstPage %> aria-disabled="true" class="arrow unavailable"<% else %> class="arrow"<% end_if %>>
						<a href="$Results.PrevLink">&laquo; Previous</a>
					</li>

					<% loop $Results.Pages %>
						<li<% if $CurrentBool %> class="current"<% end_if %>>
							<a href="$Link">$PageNum</a>
						</li>
					<% end_loop %>

					<li<% if $Results.NotLastPage %> class="arrow"<% else %> aria-disabled="true" class="arrow unavailable"<% end_if %>>
						<a href="$Results.NextLink">Next &rarr;</a>
					</li>
				</ul>
			<% end_if %>

		</article>

	</main>

</div>