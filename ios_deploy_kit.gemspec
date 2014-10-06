# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ios_deploy_kit/version'

Gem::Specification.new do |spec|
  spec.name          = "ios_deploy_kit"
  spec.version       = IosDeployKit::VERSION
  spec.authors       = ["Felix Krause"]
  spec.email         = ["krausefx@gmail.com"]
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 1.9.3'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'capybara', '~> 2.4.3' # for controlling iTC
  spec.add_dependency 'poltergeist', '~> 1.5.1' # headless Javascript browser for controlling iTC
  spec.add_dependency 'security', '~> 0.1.3' # Mac OS Keychain manager
  spec.add_dependency 'highline', '~> 1.6.21' # user inputs (e.g. passwords)
  spec.add_dependency 'nokogiri', '~> 1.6.3.1' # parsing and updating XML files
  spec.add_dependency 'fastimage', '~> 1.6.3' # fetch the image sizes from the screenshots
  spec.add_dependency 'rubyzip', '~> 1.1.6' # needed for extracting the ipa file
  spec.add_dependency 'plist', '~> 3.1.0' # for reading the Info.plist of the ipa file

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.1.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "yard", "~> 0.8.7.4"
end
