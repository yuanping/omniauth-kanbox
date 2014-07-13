# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-kanbox/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-kanbox"
  s.version     = OmniAuth::Kanbox::VERSION
  s.authors     = ["YuanPing"]
  s.email       = ["yp.xjgz@gmail.com"]
  s.homepage    = "https://github.com/yuanping/omniauth-kanbox"
  s.summary     = %q{OmniAuth strategy for Kanbox}
  s.description = %q{OmniAuth strategy for Kanbox}
  s.license     = "MIT"

  s.rubyforge_project = "omniauth-kanbox"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'omniauth', '~> 1.2'
  s.add_dependency 'omniauth-oauth2', '~> 1.2'
  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
end
