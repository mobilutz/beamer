module Beamer
  module Loader

    class LoadByDemodulizedClassName < Base

      def load_presenter
        klass = "#{object.class.name.demodulize}Presenter".constantize
        klass.new(object, view_context) if klass
      end

    end

  end
end
