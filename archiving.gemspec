$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "archiving/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "archiving"
  s.version     = Archiving::VERSION
  s.authors     = ["Harry Vangberg", "Michael Kyed"]
  s.email       = ["teknik@firmafon.dk"]
  s.homepage    = "https://github.com/firmafon/archiving"
  s.summary     = "MySQL Archive Tables"
  s.description = "Archiving aged records to archive table"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "activerecord", ">= 4.2", "< 6.0"
  s.add_dependency "mysql2"

  s.add_development_dependency "rails", ">= 4.2", "< 6.0"
  s.add_development_dependency "jquery-rails"
  s.add_development_dependency "rake"
  s.add_development_dependency "pry", "0.9.10"
  s.add_development_dependency "pry-nav", "0.2.2"
end
