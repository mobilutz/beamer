module Beamer
  module ControllerExtension
    extend ActiveSupport::Concern

    included do
      helper_method :present
    end

    def present(object, *args)
      options = {
        loader: :load_with_demodulized_fallback
      }.merge(args.extract_options!)


      presenter = options[:class].new(object, view_context) if options[:class]

      presenter ||= begin
                      loader_module = "Beamer::Loader"
                      loader_class = options[:loader].to_s.camelize
                      loader = "#{loader_module}::#{loader_class}".constantize.new(object, view_context)
                      loader.load_presenter
                    end

      yield presenter if block_given?

      presenter
    end

  end
end
