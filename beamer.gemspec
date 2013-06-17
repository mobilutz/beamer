$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "beamer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "beamer"
  s.version     = Beamer::VERSION
  s.authors     = ["Spas Poptchev", "Tarek Seoudy"]
  s.email       = ["info@converate.com"]
  s.homepage    = "http://www.converate.com"
  s.summary     = "Presenter."
  s.description = "A simple presenter."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "> 3.0"

  s.add_development_dependency "sqlite3"
end
