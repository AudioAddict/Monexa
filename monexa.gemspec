lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib) 
require 'monexa'

Gem::Specification.new do |s|
  s.name        = 'monexa'
  s.version     = Monexa::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = 'Nick Wilson'
  s.email       = 'wilson.nick@gmail.com'
  s.homepage    = 'https://github.com/AudioAddict/Monexa'
  s.description = 'Monexa is a SaaS for subscription-based billing, see http://www.monexa.com for more details'
  s.summary     = 'Ruby gem for interfacing with the Monexa XML API'
  
  s.has_rdoc      = false
  s.require_path  = 'lib'
  s.files         = Dir.glob("{lib,test}/**/*") + %w(README.md Rakefile)
  
  s.add_development_dependency 'rspec'
  s.add_dependency 'libxml-ruby'
end
