require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module CodeResponseRails
  class Application < Rails::Application
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    config.assets.enabled = true
  end
end
