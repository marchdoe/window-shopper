# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_window-shopper_session',
  :secret      => '795da3696ce339ac6e561b46dfc983bf9b910f6396691ed8be2975251b76080a6e0f76c6a8f6d58da6f20b41964e3d3ccb4e42a5730b64d11a1acd5651a6f8c5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
