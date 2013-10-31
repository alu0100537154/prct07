task :default => :spec

desc "Ejecutar el test sobre la clase Racional"
task :spec do
	sh "rspec -I. racional_spec.rb"
end

desc "Ejecutar codigo de la clase Racional"
task :bin do
	sh "ruby fraccion.rb"
end

desc "Ejecutar el test con documentacion"
task :test do
	sh "rspec -I. racional_spec.rb --format documentation"
end

desc "Ejecutar el test en formato html"
task :html do
	sh "rspec -I. racional_spec.rb --format html"
end
