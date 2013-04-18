module Beamer

  class Engine < ::Rails::Engine

    initializer "beamer.inclusion" do
      ActiveSupport.on_load(:action_controller) do
        include Beamer::ControllerExtension
      end
      ActiveSupport.on_load(:action_mailer) do
        include Beamer::ControllerExtension
      end
    end
    
  end

end
