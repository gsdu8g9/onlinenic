# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{onlinenic}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Murat Demirten", "\304\260zzet Emre Kutlu"]
  s.date = %q{2009-11-25}
  s.description = %q{This is a ruby interface to Onlinenic.com's reseller API. You can find API v2.0 documentation here: https://www.onlinenic.com/cp_english/template_api/download/ONLINENIC_API2.0.pdf}
  s.email = %q{info@yh.com.tr}
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "MIT_LICENCE",
     "Rakefile",
     "VERSION",
     "lib/onlinenic.rb",
     "onlinenic.gemspec",
     "onlinenic.yml",
     "rails/init.rb"
  ]
  s.homepage = %q{http://github.com/yenihayat/onlinenic}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Ruby interface to Onlinenic.com's reseller API}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

