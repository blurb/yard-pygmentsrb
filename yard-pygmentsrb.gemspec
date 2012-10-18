# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "yard-pygmentsrb/version"

Gem::Specification.new do |s|
  s.name        = "yard-pygmentsrb"
  s.version     = YARDPygmentsrb::VERSION
  s.authors     = ["Kiyoshi '13k' Murata"]
  s.email       = ["13k@linhareta.net"]
  s.homepage    = "http://github.com/13k/yard-pygmentsrb"
  s.summary     = %q{Adds pygments.rb syntax highlighting to YARD}
  s.description = %q{Enables the syntax highligthing of a wide variety of languages through Pygments and its Ruby integration pygments.rb. This project borrows code from the yard-pygments gem.}

  s.rubyforge_project = "yard-pygmentsrb"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "yard", "~> 0.8.3"
  s.add_runtime_dependency "pygments.rb", "~> 0.3.2"
end
