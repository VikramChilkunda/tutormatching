source 'https://rubygems.org'
ruby '2.7.3'

#Adarsh note: I took these from Michael Hartl's gemfile (https://github.com/mhartl/rails_tutorial_6th_edition_gemfiles/blob/master/sample_app/Gemfile) and included any gems I'd previously added on top (like sendgrid)

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1', '>= 6.1.3.1'
gem 'image_processing',           '1.9.3'
gem 'mini_magick'#,                '4.9.5'
gem 'active_storage_validations', '0.8.9'
gem 'bcrypt',                     '3.1.13'
gem 'faker',                      '2.11.0'
gem 'will_paginate'              #'3.3.0'
gem 'bootstrap-will_paginate',    '1.0.0'
gem 'bootstrap-sass',             '3.4.1'
gem 'puma',                       '5.2.2'
gem 'sass-rails',                 '6.0.0'
gem 'webpacker',                  '5.2.1'
gem 'turbolinks',                 '5.2.1'
gem 'jbuilder',                   '2.10.0'
gem 'bootsnap',                   '1.7.2', require: false

gem 'sendgrid-ruby'

# Export data to spreadsheets
gem 'axlsx'#, '2.1.0.pre'
gem 'axlsx_rails'


 # Used for importing, reading excel files
      # @link https://github.com/roo-rb/roo
      gem 'roo'
      # This library extends Roo to add support for handling class Excel files, including:
      # .xls files
      # .xml files in the SpreadsheetML format (circa 2003)
      # @dependent on roo gem
      # @link https://github.com/roo-rb/roo-xls
      gem 'roo-xls'

group :development, :test do
  gem 'sqlite3', '1.4.2'
  gem 'byebug',  '11.1.3', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console',        '4.1.0'
  gem 'rack-mini-profiler', '2.3.1'
  gem 'listen'#,             '3.4.1'
  gem 'spring',             '2.1.1'
end

group :test do
  gem 'capybara',                 '3.35.3'
  gem 'selenium-webdriver',       '3.142.7'
  gem 'webdrivers',               '4.6.0'
  gem 'rails-controller-testing', '1.0.5'
  gem 'minitest'                # '5.11.3'
  gem 'minitest-reporters',       '1.3.8'
  gem 'guard',                    '2.16.2'
  gem 'guard-minitest',           '2.4.6'
end

group :production do
  gem 'pg', '~> 1.2', '>= 1.2.3'
  gem 'aws-sdk-s3', '1.87.0', require: false
end



# Windows does not include zoneinfo files, so bundle the tzinfo-data gem

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
