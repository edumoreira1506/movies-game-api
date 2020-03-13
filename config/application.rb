require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module MoviesGameApi
  class Application < Rails::Application
    config.load_defaults 6.0

    # For more information about Locale Files organization, look at:
    # https://guides.rubyonrails.org/i18n.html#organization-of-locale-files
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    # Permitted locales available for the application
    I18n.available_locales = [:'pt-BR']
    # Set default locale to something other than :en
    I18n.default_locale = :'pt-BR'

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', headers: :any, methods: [:get, :post, :options]
      end
    end
  end
end
