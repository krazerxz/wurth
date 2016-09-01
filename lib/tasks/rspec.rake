require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:rspec) do |spec|
  spec.rspec_opts = ['--backtrace']
  spec.verbose = false
end
