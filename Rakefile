﻿$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

task :default => :spec


desc "Ejecucion de pruebas rspec"
task :spec do
  sh "rspec --color --format documentation -Ilib -Ispec spec/math/fraction_spec.rb"
end

desc "Ejecucion de pruebas clase"
task :clase do
  sh "rspec --color --format documentation -Ilib -Ispec spec/math/clase_spec.rb"
end

desc "Run Test con formato HTML"
task :html do
      sh "rspec -I. spec/math/fraction_spec.rb --format documentation --format html --out test.html"
end

