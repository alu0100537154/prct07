$:.unshift File.dirname(__FILE__) + 'lib'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :bin

desc "Ejecutar las espectativas de la clase Racional"
task :bin do
   sh "rspec -I. racional_spec.rb"
end

desc "Ejecutar con documentacion"
task :test do
  sh "rspec -I. racional_spec.rb --format documentation"
end

desc "Ejecutar con documentacion html"
task :thtml do
  sh "rspec -I. racional_spec.rb --format html"
end
