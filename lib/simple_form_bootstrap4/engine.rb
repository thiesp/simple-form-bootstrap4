require "simple_form_bootstrap4/simple_form_configuration"

module SimpleFormBootstrap4
  module Rails
    class Engine < ::Rails::Engine
      initializer "simple_form_bootstrap4.configure" do
        SimpleFormConfiguration::configure
      end
    end
  end
end