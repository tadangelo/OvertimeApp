require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module OvertimeApp
  class Application < Rails::Application
    config.load_defaults 5.1
    #config.active_record.raise_in_transactional_callbacks = true
    config.autoload_paths << Rails.root.join("lib")
    config.secret_key_base = ENV["SECRET_KEY_BASE"]
  end
end
