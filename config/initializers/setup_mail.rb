ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => :plain,
  :user_name => 'app35729568@heroku.com',
  :password => 'uydjtmuq',
  :domain => 'heroku.com',
  :enable_starttls_auto => true
}
