require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TutorApp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
<<<<<<< HEAD
=======
    config.assets.paths << Rails.root.join('vendor', 'assets', 'fonts')
>>>>>>> 2e8f54c59f412c13620ed903bfe8678d1e5649c4
  end
end
