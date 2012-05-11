# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "Backtrace_Array/version"

Gem::Specification.new do |s|
  s.name        = "Backtrace_Array"
  s.version     = Backtrace_Array_Version
  s.authors     = ["da99"]
  s.email       = ["i-hate-spam-45671204@mailinator.com"]
  s.homepage    = "https://github.com/da99/Backtrace_Array"
  s.summary     = %q{
    Turn backtrace String or Array into an Array for presentation.
  }
  s.description = %q{
    Check the homepage because I can't describe it probably here.
  }

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'bacon'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'Bacon_Colored'
  s.add_development_dependency 'pry'
  
  # Specify any dependencies here; for example:
  s.add_runtime_dependency 'Split_Lines'
end
