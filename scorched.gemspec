$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'scorched/version'

Gem::Specification.new 'scorched', Scorched::VERSION do |s|
  s.summary           = "Light-weight, DRY as a desert, web framework for Ruby"
  s.description       = "A lightweight Sinatra-inspired web framework for web sites and applications of any size."
  s.authors           = ["Tom Wardrop"]
  s.email             = "tom@tomwardrop.com"
  s.homepage          = "http://scorchedrb.com"
  s.files             = Dir.glob(`git ls-files`.split("\n") - %w[.gitignore])
  s.test_files        = Dir.glob('spec/**/*_spec.rb')
  s.rdoc_options      = %w[--line-numbers --inline-source --title Scorched --encoding=UTF-8]

  s.add_dependency 'rack', '~> 1.4'
  s.add_dependency 'rack-accept', '~> 0.4'
  s.add_dependency 'tilt', '~> 1.3'
  s.add_development_dependency 'rack-test', '~> 0.6'
  s.add_development_dependency 'rspec', '~> 2.9'
end