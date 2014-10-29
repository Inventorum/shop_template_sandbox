// Gruntfile with the configuration of grunt-express and grunt-open. No livereload yet!
module.exports = function(grunt) {

    // Load Grunt tasks declared in the package.json file
    require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);

    // Configure Grunt
    grunt.initConfig({
        browserSync: {
            default_options: {
                bsFiles: {
                    src : 'prosthetic/styles/all.css'
                },
                options: {
                    watchTask: true,
                    proxy: "localhost:8001"
                }
            }
        },
        less: {
            development: {
                options: {
                    compress: true,
                    optimization: 2
                },
                files: {
                    // target.css file: source.less file
                    "prosthetic/styles/all.css": "less/all.less"
                }
            }
        },
        watch: {
            styles: {
                files: ['less/**/*.less'], // which files to watch
                tasks: ['less'],
                options: {
                    nospawn: true
                }
            }
        }

    });

    // Creates the `server` task
    grunt.registerTask('default', ['browserSync', 'watch']);
};