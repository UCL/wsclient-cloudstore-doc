INDEX_FILENAME='src/index.adoc'
BUILD_DIR='docs'

desc 'Build in HTML5 format'
task :html5 do
    require 'asciidoctor'
    require 'asciidoctor-diagram/plantuml'
    Asciidoctor.convert_file INDEX_FILENAME,
        safe: :unsafe,
        to_dir: BUILD_DIR,
        mkdirs: true,
        backend: 'html5',
        attributes: 'stylesheet=github.css'
end

desc 'Clean the build directory'
task :clean do
    FileUtils.remove_entry_secure BUILD_DIR if File.exist? BUILD_DIR
end