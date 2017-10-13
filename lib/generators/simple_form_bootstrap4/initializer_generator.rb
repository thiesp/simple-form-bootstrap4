require 'rails/generators'

module SimpleFormBootstrap4
  module Generators
    class InitializerGenerator < ::Rails::Generators::Base

      desc <<-DOC
        config/initializers/simple_form_bootstrap4.rb
      DOC

      def self.source_root
        File.expand_path(File.join(File.dirname(__FILE__), 'template'))
      end

      def initialize(*args, &block)
        super
        generate_stylesheets
      end

      private

      def generate_stylesheets
        template "simple_form_bootstrap4.rb", "config/initializers/simple_form_bootstrap4.rb"
      end
    end
  end
end

