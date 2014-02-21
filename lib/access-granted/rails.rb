require 'access-granted/rails/controller_methods'

module AccessGranted
  module Rails

  end
end

if defined? ActionController::Base
  ActionController::Base.class_eval do
    include AccessGranted::Rails::ControllerMethods
  end
end
