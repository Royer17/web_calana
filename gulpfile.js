var 	gulp 					= require('gulp'),
			sass 					= require('gulp-sass'),
			autoprefixer 	= require('gulp-autoprefixer'),
			concat 				= require('gulp-concat'),
			uglify 				= require('gulp-uglify'),
			plumber 			= require('gulp-plumber'),
			watch 				= require('gulp-watch');
			livereload 		= require('gulp-livereload');

// directorios de origen
var 	scssDir 	= 'src/sass/*.scss',
			jsDir 		= 'src/js/*.js',
			imgDir 		= 'src/img/*';

// directorios de destino
var 	_cssDir 	= 'dist/css/',
			_jsDir		= 'dist/js/',
			_imgDir 	= 'dist/img';

gulp.task('scss2css', function() {
	gulp.src(scssDir)
	.pipe(plumber())
	.pipe(sass({outputStyle: 'compressed'}).on('error', sass.logError))
	.pipe(autoprefixer("last 2 versions", "> 1%", "ie 8", "ie 7"))
	.pipe(gulp.dest(_cssDir))
	.pipe(livereload());
});

gulp.task('scriptJS', function() {
	gulp.src(jsDir)
	.pipe(plumber())
	.pipe(concat('script.js'))
	.pipe(uglify())
	.pipe(gulp.dest(_jsDir))
	.pipe(livereload());
});

gulp.task('views', function() {
	gulp.src('application/views/*.php')
	// gulp.src('application/**.*')
	// gulp.src('**/*.*')
	.pipe(livereload());
});

gulp.task('watch', function() {
	livereload.listen();
	gulp.watch('src/sass/*.scss', ['scss2css']);
	gulp.watch('src/sass/*/*.scss', ['scss2css']);
	gulp.watch('src/js/*.js', ['scriptJS']);
	gulp.watch('application/views/*.php', ['views']);
	gulp.watch('application/views/*/*.php', ['views']);
	// gulp.watch('application/**.*', ['views']);
	// gulp.watch('**/**.*', ['views']);
});

gulp.task('default', ['scss2css', 'scriptJS', 'watch']);
