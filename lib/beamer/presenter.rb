module Beamer

  class Presenter

    def initialize(object, template)
      @object = object
      @template = template
    end

    def self.presents(name)
      define_method(name) do
        @object
      end
    end

    def underscored_class
      @object.class.name.underscore
    end

    protected

    def h
      @template
    end

    def handle_none(value, html = true)
      if value.present?
        if block_given?
          yield(value)
        else
          value
        end
      else
        return h.content_tag(:span, '-', class: 'none') if html
        '-'
      end
    end

  end

end
