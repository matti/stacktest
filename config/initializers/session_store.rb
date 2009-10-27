# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_stacktest_session',
  :secret      => '2c20d60bca82a1584c2235439a28ca3a76b2dd936c92d8a8cbc03480cab0486e652516fd2a746db2aeae7c2791d020fafa97b980dd5866e18081e94789905f23'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
