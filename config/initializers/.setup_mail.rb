ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.zoho.com",
  :port                 => 465,
  :domain               => "gabeandnicole.com",
  :user_name            => "nicole@gabeandnicole.com",
  :password             => "Nikole02",
  :authentication       => :plain,
  :ssl                  => true,
  :tls                  => true,
  :enable_starttls_auto => true
}

config.action_mailer.default_url_options = { host: 'gabeandnicole.com' }
# config.action_mailer.delivery_method = :smtp
# config.action_mailer.smtp_settings = {
