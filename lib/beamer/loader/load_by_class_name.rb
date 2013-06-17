module Beamer
  module Loader

    class LoadByClassName < Base

      def load_presenter
        klass = "#{object.class.name}Presenter".constantize
        klass.new(object, view_context) if klass
      end

    end

  end
end
