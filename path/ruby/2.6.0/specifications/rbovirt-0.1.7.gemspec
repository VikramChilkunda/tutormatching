# -*- encoding: utf-8 -*-
# stub: rbovirt 0.1.7 ruby lib

Gem::Specification.new do |s|
  s.name = "rbovirt".freeze
  s.version = "0.1.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Amos Benari".freeze]
  s.date = "2018-07-24"
  s.description = "    A Ruby client for oVirt REST API\n".freeze
  s.email = ["abenari@redhat.com".freeze]
  s.extra_rdoc_files = ["README.rdoc".freeze, "CHANGES.rdoc".freeze]
  s.files = ["CHANGES.rdoc".freeze, "README.rdoc".freeze]
  s.homepage = "http://github.com/abenari/rbovirt".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--title".freeze, "rbovirt".freeze, "--main".freeze, "README.rdoc".freeze, "--line-numbers".freeze, "--inline-source".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "3.0.3.1".freeze
  s.summary = "A Ruby client for oVirt REST API".freeze

  s.installed_by_version = "3.0.3.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<rest-client>.freeze, ["> 1.7.0"])
      s.add_development_dependency(%q<shoulda>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 2.6"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
      s.add_dependency(%q<rest-client>.freeze, ["> 1.7.0"])
      s.add_dependency(%q<shoulda>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-rails>.freeze, ["~> 2.6"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
    s.add_dependency(%q<rest-client>.freeze, ["> 1.7.0"])
    s.add_dependency(%q<shoulda>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 2.6"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
