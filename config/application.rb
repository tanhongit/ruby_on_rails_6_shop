require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RubyOnRails6Shop
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.filter_parameters += [:credit_card_number]

    config.middleware.use I18n::JS::Middleware

    config.autoload_paths += %W(#{Rails.root}/lib)

    config.assets.initialize_on_precompile = false

    config.i18n.fallbacks = true
  end
end
