require "generators/hotwire_scaffold/generator_helpers"

module HotwireScaffold
  module Generators
    # Custom scaffolding generator
    class ScaffoldGenerator < Rails::Generators::ScaffoldControllerGenerator
      source_root File.expand_path("templates", __dir__)

      def create_controller_files
        template "controller.rb",
                 File.join("app/controllers", controller_class_path, "#{controller_file_name}_controller.rb")
      end

      def copy_view_files
        directory_path = File.join("app/views", controller_file_path)
        available_views.each do |file_name|
          template "views/#{file_name}.html.erb", File.join(directory_path, "#{file_name}.html.erb")
        end
        turbo_files.each do |file_name|
          template "views/#{file_name}.turbo_stream.erb", File.join(directory_path, "#{file_name}.turbo_stream.erb")
        end
        template "views/partial.html.erb", File.join(directory_path, "_#{singular_name}.html.erb")
      end

      private

      def turbo_files
        %w[create update destroy]
      end

      def available_views
        %w[index edit show new _form]
      end
    end
  end
end
