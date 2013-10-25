desc "practica"
task :default do
  sh "ruby -Ilib /lib/math/fraction.rb"
end

desc "Ejecucion de pruebas rspec"
task :test do
  sh "rspec --color --format documentation -Ilib -Ispec spec/math/fraction_spec.rb"
end

desc "Ejecucion de pruebas clase"
task :clase do
  sh "rspec --color --format documentation -Ilib -Ispec spec/math/clase_spec.rb"
end
