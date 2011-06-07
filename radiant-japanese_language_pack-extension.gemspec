# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "radiant-japanese_language_pack-extension/version"

Gem::Specification.new do |s|
  s.name        = "radiant-japanese_language_pack-extension"
  s.version     = RadiantJapaneseLanguagePackExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Radiant CMS Dev Team"]
  s.email       = ["radiant@radiantcms.org"]
  s.homepage    = "http://radiantcms.org/"
  s.summary     = %q{Japanese Language Pack for Radiant CMS}
  s.description = %q{Provides Japanese translation for the Radiant admin interface}

  ignores = if File.exist?(".gitignore")
    File.read(".gitignore").split("\n").inject([]) {|a,p| a + Dir[p] }
  else
    []
  end
  s.files         = Dir["**/*"] - ignores
  s.test_files    = Dir["test/**/*","spec/**/*","features/**/*"] - ignores
  s.require_paths = ["lib"]

  # s.add_dependency "some_gem", "~> 1.0.0"

  s.post_install_message = %{
  Add this to your radiant project with:
    config.gem "radiant-japanese_language_pack-extension", :version => "~> #{RadiantJapaneseLanguagePackExtension::VERSION}"
  }
end
