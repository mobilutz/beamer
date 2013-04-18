module Beamer
  module Loader

    class LoadWithDemodulizedFallback < Base

      def load_presenter
        load_by_class_name = LoadByClassName.new(object, view_context)
        if presenter = load_by_class_name.load_presenter
          presenter
        else
          load_by_demodulized_class_name = LoadByDemodulizedClassName.new(object, view_context)
          load_by_demodulized_class_name.load_presenter
        end
      end
    end

  end
end
