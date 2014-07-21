# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
WeddingSite::Application.initialize!

ActionMailer::Base.delivery_method = 'smtp'
# config.action_mailer.raise_delivery_errors = true
# config.action_mailer.perform_deliveries = true
ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :domain         => 'heroku.com',
  :authentication => :plain,
  :user_name      => ENV["SENDGRID_USERNAME"],
  :password       => ENV["SENDGRID_PASSWORD"],
  :enable_starttls_auto => true
}
