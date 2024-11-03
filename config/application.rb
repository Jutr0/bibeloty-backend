require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ECommerce
  class Application < Rails::Application
    config.load_defaults 7.0

    config.frontend_url = ENV.fetch('FRONTEND_URL', 'http://localhost:3000')
    config.backend_url = ENV.fetch("BACKEND_URL", 'http://localhost:4000')
    config.secret_key_base = ENV.fetch("SECRET_KEY_BASE", "cirrusCumulonimbus")
    config.admin_login = ENV.fetch("ADMIN_LOGIN", "admin")
    config.admin_password = ENV.fetch("ADMIN_PASSWORD", "password")

    Rails.application.routes.default_url_options[:host] = config.backend_url

    config.generators do |g|
      g.orm :active_record, primary_key_type: :uuid
      g.test_framework :rspec,
                       view_specs: false,
                       helper_specs: false,
                       routing_specs: false,
                       controller_specs: true,
                       request_specs: true
    end
    config.api_only = true
  end
end
