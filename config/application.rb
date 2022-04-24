# frozen_string_literal: true

require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module ArticlesApp
  class Application < Rails::Application
    config.load_defaults 7.0
    config.time_zone = ENV.fetch('RAILS_DEFAULT_TIMEZONE', 'Central Time (US & Canada)')
    config.eager_load_paths << Rails.root.join('extras')
  end
end
