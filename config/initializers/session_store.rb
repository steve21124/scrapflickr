# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_app_flickr_session',
  :secret      => '3efbc532e3b9b0ca6faebbdbf8097d6b078d17ea2b3ef2f647336f2c4acbfb2f155e1ade6b30e0fd19b376772fafe860866e0ee399672fe32c8f92dd4ca5ecc1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
