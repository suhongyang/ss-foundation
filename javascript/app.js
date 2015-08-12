(function(window, document, $) {

	'use strict';

	$(document).ready( function() {

		var app = function() {

			var initFoundation = function() {

				$(document).foundation();

				var doc = document.documentElement;
				doc.setAttribute('data-useragent', navigator.userAgent);
			};

			return {
				initFoundation: initFoundation
			};
		};

		app.initFoundation();

	});

}(window, document, window.jQuery));