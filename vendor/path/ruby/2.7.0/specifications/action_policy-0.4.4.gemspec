# -*- encoding: utf-8 -*-
# stub: action_policy 0.4.4 ruby lib

Gem::Specification.new do |s|
  s.name = "action_policy".freeze
  s.version = "0.4.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "http://github.com/palkan/action_policy/issues", "changelog_uri" => "https://github.com/palkan/action_policy/blob/master/CHANGELOG.md", "documentation_uri" => "https://actionpolicy.evilmartians.io/", "homepage_uri" => "https://actionpolicy.evilmartians.io/", "source_code_uri" => "http://github.com/palkan/action_policy" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Vladimir Dementyev".freeze]
  s.date = "2020-07-07"
  s.description = "Authorization framework for Ruby/Rails application".freeze
  s.email = ["dementiev.vm@gmail.com".freeze]
  s.homepage = "https://github.com/palkan/action_policy".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Authorization framework for Ruby/Rails application".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<ammeter>.freeze, ["~> 1.1.3"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 1.15"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.3"])
    s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.67.0"])
    s.add_development_dependency(%q<rubocop-md>.freeze, ["~> 0.2"])
    s.add_development_dependency(%q<standard>.freeze, ["~> 0.0.39"])
    s.add_development_dependency(%q<benchmark-ips>.freeze, ["~> 2.7.0"])
    s.add_development_dependency(%q<i18n>.freeze, [">= 0"])
  else
    s.add_dependency(%q<ammeter>.freeze, ["~> 1.1.3"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.15"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.3"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.67.0"])
    s.add_dependency(%q<rubocop-md>.freeze, ["~> 0.2"])
    s.add_dependency(%q<standard>.freeze, ["~> 0.0.39"])
    s.add_dependency(%q<benchmark-ips>.freeze, ["~> 2.7.0"])
    s.add_dependency(%q<i18n>.freeze, [">= 0"])
  end
end
