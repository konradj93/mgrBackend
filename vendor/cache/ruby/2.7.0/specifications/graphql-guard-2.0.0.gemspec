# -*- encoding: utf-8 -*-
# stub: graphql-guard 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "graphql-guard".freeze
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["exAspArk".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-04-20"
  s.description = "Simple authorization gem for graphql-ruby".freeze
  s.email = ["exaspark@gmail.com".freeze]
  s.homepage = "https://github.com/exAspArk/graphql-guard".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Simple authorization gem for graphql-ruby".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<graphql>.freeze, [">= 1.10.0", "< 2"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 2.1"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
  else
    s.add_dependency(%q<graphql>.freeze, [">= 1.10.0", "< 2"])
    s.add_dependency(%q<bundler>.freeze, ["~> 2.1"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end
