   $:.unshift File.dirname(__FILE__) + 'lib'
   require "bundler/gem_tasks" 
   require 'rspec/core/rake_task'
   RSpec::Core::RakeTask.new
   task :default => :spec

   desc "Pruebas unitarias de la clase Amatista::Fraccion"
   task :tu do
  	sh "ruby -I. test/tc_fraccion.rb"
   end
   desc "Ejecutar solo las pruebas simples"
   task :simple do
  	sh "ruby -I. test/tc_fraccion.rb -n /simple/"
   end
   
   
