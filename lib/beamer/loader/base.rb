module Beamer
  module Loader
    class Base

      attr_reader :object
      attr_reader :view_context

      def initialize(object, view_context)
        @object = object
        @view_context = view_context
      end

      def load_presenter
        raise "implement!"
      end

    end
  end
end
