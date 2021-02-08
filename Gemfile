source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.7'
gem 'bootstrap', '~> 4.3.1'
gem 'bootstrap-sass', '3.4.1'
gem 'bcrypt',                  '3.1.12'

#gem 'faker',                   '1.7.3'

gem 'carrierwave',             '1.3.2'

gem 'mini_magick',             '4.9.4'

gem 'will_paginate',           '3.1.6'

gem 'bootstrap-will_paginate', '1.0.0'

gem 'puma',                    '3.9.1'

gem 'sass-rails',              '5.0.6'

gem 'uglifier',                '3.2.0'

gem 'coffee-rails',            '4.2.2'

gem 'jquery-rails',            '4.3.1'

gem 'turbolinks',              '5.0.1'

gem 'jbuilder',                '2.7.0'

gem 'sendgrid-ruby'

# Export data to spreadsheets
gem 'axlsx', '2.1.0.pre'
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

  gem 'sqlite3', '1.3.13'

  gem 'byebug',  '9.0.6', platform: :mri

  gem 'rubocop'
end



group :development do

  gem 'web-console',           '3.5.1'

  gem 'listen',                '3.0.8'

  gem 'spring',                '2.0.2'

  gem 'spring-watcher-listen', '2.0.1'

end



group :test do

  gem 'rails-controller-testing', '1.0.2'

#  gem 'minitest',                 '5.10.3'

  gem 'minitest-reporters',       '1.1.14'

  gem 'guard',                    '2.14.1'

  gem 'guard-minitest',           '2.4.6'

end



group :production do

  gem 'pg',  '0.20.0'

  gem 'fog', '1.42'
  
  gem 'rails_12factor'

end



# Windows does not include zoneinfo files, so bundle the tzinfo-data gem

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
