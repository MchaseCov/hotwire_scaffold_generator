require "generators/hotwire_scaffold/generator_helpers"

module HotwireScaffold
  module Generators
    # Custom scaffolding generator
    class ScaffoldControllerGenerator < Rails::Generators::ScaffoldControllerGenerator
      include HotwireScaffold::Generators::GeneratorHelpers
      source_root File.expand_path("templates", __dir__)

      desc "Generates controller, controller_spec and views for the model with the given NAME."

      def copy_controller_and_spec_files
        template "controller.rb", File.join("app/controllers", "#{file_name}_controller.rb")
      end
    end
  end
end
