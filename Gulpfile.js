"use strict";

// Setting up Gulp modules
var gulp = require('gulp'),

	// Common modules
	browserSync = require('browser-sync'),
	reload = browserSync.reload,
	concat = require('gulp-concat'),
	rename = require('gulp-rename'),

	// Styling modules
	autoprefixer = require('gulp-autoprefixer'),
	cssLint = require('gulp-csslint'),
	minifycss = require('gulp-minify-css'),
	sass = require('gulp-sass'),

	// JavaScript modules
	jshint = require('gulp-jshint'),
	stylish = require('jshint-stylish'),
	uglify = require('gulp-uglify'),

	// Locations
	input = {
		scss: 'scss/**/*.scss',
		img: 'images/*',
		js: 'javascript/**/!(*.min)*.js',
		ss: 'templates/**/*.ss'
	},
	output = {
		css: 'css',
		js: 'javascript'
	};

// Gulp tasks
// ==========

// Default: watch for CSS and/or JS changes
gulp.task('default', ['serve']);

// Run BrowserSync
gulp.task('serve', ['build-css', 'css-lint', 'jshint', 'build-js'], function() {

	browserSync({
		proxy: 'sandbox.vagrant'
	});

	gulp.watch(input.scss, ['build-css', 'css-lint']);
	gulp.watch(input.js, ['jshint', 'build-js']).on('change', reload);
	gulp.watch(input.img).on('change', reload);
	gulp.watch(input.ss).on('change', reload);
});

// Build expanded and minified css
gulp.task('build-css', function() {
	return gulp.src(input.scss)
		.pipe(sass().on('error', sass.logError))
		.pipe(autoprefixer({
			browsers: ['> 5%', 'ie 8']
		}))
		.pipe(gulp.dest(output.css)) // Compile CSS
		.pipe(minifycss())
		.pipe(rename({ suffix: '.min'}))
		.pipe(gulp.dest(output.css)) // Minify CSS
		.pipe(reload({stream: true}));
});

// Run css lint
gulp.task('css-lint', function() {
	gulp.src(output.css)
		.pipe(cssLint());
});

// Build js
gulp.task('build-js', function() {
	return gulp.src(input.js)
		.pipe(concat('app.js'))
		.pipe(gulp.dest(output.js)) // Output concatenated JS
		.pipe(uglify())
		.pipe(rename({ suffix: '.min'}))
		.pipe(gulp.dest(output.js)); // Output minified JS
});

// Run jshint
gulp.task('jshint', function() {
	return gulp.src(output.js)
		.pipe(jshint())
		.pipe(jshint.reporter(stylish));
});