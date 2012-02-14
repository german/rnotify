# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rnotify"
  s.version = "0.2"
  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dmitrii Samoilov"]
  s.date = "2012-02-14"
  s.description = "Using NotifyOSD system in Ubuntu to display Rails logger messages and TDD/BDD messages"
  s.email = "germaninthetown@gmail.com"
  s.extra_rdoc_files = ["README.md", "lib/rnotify.rb", "lib/adapters/logger.rb", "lib/adapters/rspec.rb"]
  s.files = ["README.md", "lib/rnotify.rb", "lib/adapters/logger.rb", "lib/adapters/rspec.rb", "lib/resources/warn.png"]
  s.homepage = "https://github.com/german/rnotify"
  s.require_paths = ["lib"]
  s.rubyforge_project = "rnotify"
  s.rubygems_version = "1.6.2"
  s.summary = "Using NotifyOSD system in Ubuntu to display Rails logger messages and TDD/BDD messages"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<rspec-rails>, [">= 2.7.0"])
    else
      s.add_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_dependency(%q<rspec-rails>, [">= 2.7.0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3.0.0"])
    s.add_dependency(%q<rspec-rails>, [">= 2.7.0"])
  end
end
