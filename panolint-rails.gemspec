# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "panolint-rails"
  spec.version       = "0.0.0.unversioned"
  spec.authors       = ["Amy Lieberman"]
  spec.email         = ["alieberman@panoramaed.com"]

  spec.summary       = "Rules for linting Rails code at Panorama Education. "\
                       "Use the latest git commit of this gem instead of the "\
                       "version pushed to RubyGems."
  spec.homepage      = "https://github.com/panorama-ed/panolint-rails"
  spec.license       = "MIT"
  spec.metadata      = { "rubygems_mfa_required" => "true" }

  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0")
  end

  spec.add_dependency "brakeman", "5.4.0"
  spec.add_dependency "rubocop-rails", "2.19.0"
end
