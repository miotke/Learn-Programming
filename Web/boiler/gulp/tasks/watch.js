var gulp = require('gulp');
var watch = require('gulp-watch');
var browserSync = require('browser-sync').create();

gulp.task('watch', function() {
  browserSync.init({
    server: {
      baseDir: "./"
    }
  });

  watch('./index.html', function() {
    browserSync.reload();
  });

  watch('./assets/js/*.js', function() {
    browserSync.reload();
  });

  watch('./assets/css/styles/**/*.css', function() {
    gulp.start('cssInject');
  });
});


gulp.task('cssInject', ['style'], function() {
  return gulp.src('./assets/css/stylesheets/styles.css')
    .pipe(browserSync.stream());
});
