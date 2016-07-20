# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( agency.scss )
# Rails.application.config.assets.precompile += %w( agency.js )
# Rails.application.config.assets.precompile += %w( home.scss )

Rails.application.config.assets.precompile += %w( devise/sessions.css )
Rails.application.config.assets.precompile += %w( devise/sessions.js )
Rails.application.config.assets.precompile += %w( devise/registrations.css )
Rails.application.config.assets.precompile += %w( devise/registrations.js )
Rails.application.config.assets.precompile += %w( devise/passwords.css )
Rails.application.config.assets.precompile += %w( devise/passwords.js )

Rails.application.config.assets.precompile += %w( themes/user_theme.js )

%w( themes/agency visitors users ).each do |controller|
  Rails.application.config.assets.precompile += ["#{controller}.js", "#{controller}.scss"]
end
