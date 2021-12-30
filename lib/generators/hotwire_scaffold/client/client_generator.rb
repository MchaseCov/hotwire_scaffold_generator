# frozen_string_literal: true

require "generators/hotwire_scaffold/client_controller/client_controller_generator"
require "rails/generators/rails/resource/resource_generator"
module HotwireScaffold
  module Generators
    class ClientGenerator < Rails::Generators::ResourceGenerator
      remove_hook_for :resource_controller
      remove_class_option :actions

      invoke ClientControllerGenerator
    end
  end
end
