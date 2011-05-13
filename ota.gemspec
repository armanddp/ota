# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ota/version"

Gem::Specification.new do |s|
  s.name        = "ota"
  s.version     = Ota::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Armand du Plessis"]
  s.email       = ["adp@bank.io"]
  s.homepage    = ""
  s.summary     = %q{Over-The-Air Provisioning}
  s.description = %q{Over-The-Air Provisioning}

  s.rubyforge_project = "ota"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency "ruby-smpp"
  s.add_development_dependency "rspec" 
  s.add_development_dependency "factory_girl"
end