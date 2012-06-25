# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{adpseed}
  s.version = "1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Waterfield Technologies}]
  s.date = %q{2012-06-25}
  s.description = %q{Adspeed API}
  s.email = %q{info@waterfieldtech.com}
  s.extra_rdoc_files = [%q{README.md}, %q{lib/adpseed.rb}]
  s.files = [%q{Manifest}, %q{README.md}, %q{Rakefile}, %q{lib/adpseed.rb}, %q{adpseed.gemspec}]
  s.homepage = %q{http://github.com/waterfield/adspeed}
  s.rdoc_options = [%q{--line-numbers}, %q{--inline-source}, %q{--title}, %q{Adpseed}, %q{--main}, %q{README.md}]
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{adpseed}
  s.rubygems_version = %q{1.8.7}
  s.summary = %q{Adspeed API}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
