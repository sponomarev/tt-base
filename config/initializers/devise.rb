Devise.setup do |config|
  config.secret_key = '0ce6084092677ff96a4b48ff0c81bbc879d8cd9ff841e6234af38a75f201d3702b989e01e9bde1bd6fc3c5569a6cce49bb5d1894241673637ad7040ba66b1d98'

  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..128
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
end
