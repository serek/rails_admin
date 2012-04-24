require 'rails'
require 'jquery-rails'
require 'remotipart'
require 'bootstrap-sass'
require 'kaminari'
require 'rack-pjax'
require 'jquery-ui-rails'
require 'nested_form'
require 'rails_admin'

module RailsAdmin
  class Engine < Rails::Engine
    isolate_namespace RailsAdmin

    initializer "RailsAdmin pjax hook" do |app|
      app.config.middleware.use Rack::Pjax
    end
  end
end
