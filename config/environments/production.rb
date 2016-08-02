Rails.application.configure do

  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.serve_static_files = ENV['RAILS_SERVE_STATIC_FILES'].present?
  config.assets.js_compressor = :uglifier
  config.assets.compile = false
  config.assets.digest = false
  config.log_level = :debug
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new
  config.active_record.dump_schema_after_migration = false
  config.action_mailer.default_url_options = { host: 'http://admin@litest.com' }

  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.perform_deliveries = true

end
# На случай деплоя на Heroku
#  ActionMailer::Base.smtp_settings = {
#    :address              => 'smtp.sendgrid.net',
#    :port                 => '587',
#    :domain               => 'heroku.com',
#    :user_name            => ENV['USERNAME'],
#    :password             => ENV['PASSWORD'],
# :authentication       => "plain",
#  :enable_starttls_auto => true
#  }
#end
