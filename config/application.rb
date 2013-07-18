require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
require "rails/test_unit/railtie"

# If you have a Gemfile, require the default gems, the ones in the
# current environment and also include :assets gems if in development
# or test environments.
Bundler.require *Rails.groups(:assets) if defined?(Bundler)

module Hastingsco
  class Application < Rails::Application

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable the asset pipeline
    config.assets.enabled = true
    config.serve_static_assets = false
  end
end
