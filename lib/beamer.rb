require 'rails'

module Beamer

  module Loader
    autoload :Base, 'beamer/loader/base'
    autoload :LoadByClassName, 'beamer/loader/load_by_class_name'
    autoload :LoadByDemodulizedClassName, 'beamer/loader/load_by_demodulized_class_name'
    autoload :LoadWithDemodulizedFallback, 'beamer/loader/load_with_demodulized_fallback'
  end

  autoload :ControllerExtension, 'beamer/controller_extension'
  autoload :Presenter, 'beamer/presenter'

end

require 'beamer/engine'


