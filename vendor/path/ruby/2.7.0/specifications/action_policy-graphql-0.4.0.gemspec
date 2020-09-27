# -*- encoding: utf-8 -*-
# stub: action_policy-graphql 0.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "action_policy-graphql".freeze
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/palkan/action_policy-graphql/issues", "changelog_uri" => "https://github.com/palkan/action_policy-graphql/blob/master/CHANGELOG.md", "documentation_uri" => "https://actionpolicy.evilmartians.io/#/graphql", "homepage_uri" => "https://github.com/palkan/action_policy-graphql", "source_code_uri" => "https://github.com/palkan/action_policy-graphql" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Vladimir Dementyev".freeze]
  s.date = "2020-03-11"
  s.description = "Action Policy integration for GraphQL-Ruby".freeze
  s.email = ["dementiev.vm@gmail.com".freeze]
  s.homepage = "https://github.com/palkan/action_policy-graphql".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.0".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Action Policy integration for GraphQL-Ruby".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<action_policy>.freeze, [">= 0.3.0"])
    s.add_runtime_dependency(%q<graphql>.freeze, [">= 1.9.3"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 1.15"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.8"])
    s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.67.0"])
    s.add_development_dependency(%q<rubocop-md>.freeze, ["~> 0.3"])
    s.add_development_dependency(%q<standard>.freeze, ["~> 0.0.39"])
    s.add_development_dependency(%q<i18n>.freeze, [">= 0"])
  else
    s.add_dependency(%q<action_policy>.freeze, [">= 0.3.0"])
    s.add_dependency(%q<graphql>.freeze, [">= 1.9.3"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.15"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.8"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.67.0"])
    s.add_dependency(%q<rubocop-md>.freeze, ["~> 0.3"])
    s.add_dependency(%q<standard>.freeze, ["~> 0.0.39"])
    s.add_dependency(%q<i18n>.freeze, [">= 0"])
  end
end
