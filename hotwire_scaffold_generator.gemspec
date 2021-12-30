# frozen_string_literal: true

require_relative "lib/hotwire_scaffold_generator/version"

Gem::Specification.new do |spec|
  spec.name = "hotwire_scaffold_generator"
  spec.version = HotwireScaffoldGenerator::VERSION
  spec.authors = ["Chase Covington"]
  spec.email = ["mchasecov@gmail.com"]

  spec.summary = "A gem to generate a MVC scaffold to quickly get started with client-request format Turbo Streams."
  spec.description = "A gem to generate a MVC scaffold to quickly get started with Turbo Streams. This scaffold builds
  on top of the existing Rails generatiors to include the model, controller actions, and Turbo ready-views
  that you need for your model to be streamed when instances are created, updated, and deleted."
  spec.homepage = "https://github.com/MchaseCov/hotwire_scaffold_generator"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/MchaseCov/hotwire_scaffold_generator"
  spec.metadata["changelog_uri"] = "https://github.com/MchaseCov/hotwire_scaffold_generator/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
