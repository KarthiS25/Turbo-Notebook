# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# ActionMailer::Base.delivery_method = :smtp
# ActionMailer::Base.perform_deliveries = true
# ActionMailer::Base.smtp_settings = {
#     address: 'smtp.gmail.com',
#     port: 465,
#     domain:'gmail.com',
#     user_name: ENV['GMAIL_USERNAME'],
#     user_password: ENV['GMAIL_PASSWORD'],
#     authentication: 'plain',
#     :ssl => true,
#     :tsl => true,
#     enablr_starttls_auto: true}
# bf633135a01f685d61227a0e27a43905

ActionMailer::Base.smtp_settings = {
    user_name: 'apikey',
    password: Rails.application.credentials.dig(:sendgrid_api_key),
    domain: 'www.example.com',
    address: 'smtp.sendgrid.net',
    port: 587,
    authentication: :plain,
    enable_starttls_auto: true
  }