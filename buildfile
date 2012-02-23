# Will be applied if JAVA_OPTS not set
ENV['JAVA_OPTS'] ||= "-Xmx512M -XX:MaxPermSize=256M"

VERSION_NUMBER = "0.1-SNAPSHOT"

require 'buildr/scala'

Dir[File.dirname(__FILE__) + "/build/*.rb"].each {|f| require f}

Project.local_task(:uberjar)

define "skypebot" do

  project.version = VERSION_NUMBER
  project.group = "com.envigostudios"

  run.using :main => "com.envigostudios.skypebot.SkypeBot", :java_args => ["-d32"]

  deps = []
  deps << SKYPE_API
  deps << SCALAJ
  deps << SCALA_LIBRARY
  deps << COMMONS
  
  compile.with deps
  
  test.using :junit
  test.with 

  package(:jar)
  
  task :uberjar => :package do |t|

      assembly_dir = "target/assembly"

      FileUtils.mkdir_p( "#{assembly_dir}/lib" )
      FileUtils.mkdir_p( "#{assembly_dir}/main" )

      FileUtils.copy "target/#{project.name}-#{project.version}.jar", "#{assembly_dir}/main"

      artifacts = Buildr.artifacts(deps).map(&:to_s)
      artifacts.each do |artifact|
          FileUtils.copy artifact, "#{assembly_dir}/lib" 
      end

      # XXX: path to one-jar-boot-0.97.jar - http://one-jar.sourceforge.net/
      Unzip.new( assembly_dir => _("build/one-jar-boot-0.97.jar")).extract
      FileUtils.rm_rf "#{assembly_dir}/src" 

      File.open( "#{assembly_dir}/boot-manifest.mf", 'a') do |f| 
          # XXX: Set Java main class
          f.write("One-Jar-Main-Class: com.envigostudios.skypebot.SkypeBot\n")
      end

      `cd target/assembly; jar -cvfm ../#{project.name}-uberjar-#{project.version}.jar boot-manifest.mf .`
    end
 
end

