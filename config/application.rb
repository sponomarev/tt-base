require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'sprockets/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TtBase
  class Application < Rails::Application
    config.time_zone = 'Moscow'

    # Application locale
    I18n.enforce_available_locales = true
    I18n.default_locale = :ru
    I18n.locale = :ru

    # Disable unnecessary generators
    config.generators do |g|
      g.assets = false
      g.helper = false
    end
  end
end
