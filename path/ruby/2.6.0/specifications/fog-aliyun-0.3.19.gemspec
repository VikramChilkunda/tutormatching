# -*- encoding: utf-8 -*-
# stub: fog-aliyun 0.3.19 ruby lib

Gem::Specification.new do |s|
  s.name = "fog-aliyun".freeze
  s.version = "0.3.19"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Qinsi Deng, Jianxun Li, Jane Han, Guimin He".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-08-17"
  s.description = "As a FOG provider, fog-aliyun support aliyun OSS/ECS. It will support more aliyun services later.".freeze
  s.email = ["dengqinsi@sina.com".freeze, "guimin.hgm@alibaba-inc.com".freeze]
  s.homepage = "https://github.com/fog/fog-aliyun".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3.1".freeze
  s.summary = "Fog provider for Alibaba Cloud Web Services.".freeze

  s.installed_by_version = "3.0.3.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<mime-types>.freeze, ["~> 2.6", ">= 2.6.2"])
      s.add_development_dependency(%q<pry-nav>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<memory_profiler>.freeze, [">= 0"])
      s.add_development_dependency(%q<aliyun-sdk>.freeze, ["~> 0.8.0"])
      s.add_runtime_dependency(%q<aliyun-sdk>.freeze, ["~> 0.8.0"])
      s.add_runtime_dependency(%q<fog-core>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<fog-json>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<ipaddress>.freeze, ["~> 0.8"])
      s.add_runtime_dependency(%q<xml-simple>.freeze, ["~> 1.1"])
    else
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<mime-types>.freeze, ["~> 2.6", ">= 2.6.2"])
      s.add_dependency(%q<pry-nav>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<memory_profiler>.freeze, [">= 0"])
      s.add_dependency(%q<aliyun-sdk>.freeze, ["~> 0.8.0"])
      s.add_dependency(%q<aliyun-sdk>.freeze, ["~> 0.8.0"])
      s.add_dependency(%q<fog-core>.freeze, [">= 0"])
      s.add_dependency(%q<fog-json>.freeze, [">= 0"])
      s.add_dependency(%q<ipaddress>.freeze, ["~> 0.8"])
      s.add_dependency(%q<xml-simple>.freeze, ["~> 1.1"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<mime-types>.freeze, ["~> 2.6", ">= 2.6.2"])
    s.add_dependency(%q<pry-nav>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<memory_profiler>.freeze, [">= 0"])
    s.add_dependency(%q<aliyun-sdk>.freeze, ["~> 0.8.0"])
    s.add_dependency(%q<aliyun-sdk>.freeze, ["~> 0.8.0"])
    s.add_dependency(%q<fog-core>.freeze, [">= 0"])
    s.add_dependency(%q<fog-json>.freeze, [">= 0"])
    s.add_dependency(%q<ipaddress>.freeze, ["~> 0.8"])
    s.add_dependency(%q<xml-simple>.freeze, ["~> 1.1"])
  end
end
