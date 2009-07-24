# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tonkapark-social_session',
  :secret      => 'e96e8703b97812969a057cddd5aa0da365bf8583fb5360b4ca8b7e355026aab1e5606a311cdb92208f645c9141fa163c9c2d70f88728d24a0b1f92e40928051b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
