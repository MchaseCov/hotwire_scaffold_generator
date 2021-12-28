module HotwireScaffold
  module Generators
    # Some helpers for generating scaffolding
    module GeneratorHelpers
      def hotwire?
        options["hotwire"]
      end
    end
  end
end
