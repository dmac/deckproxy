# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_site_session',
  :secret      => '71a18260ed0b6784162c1c520e93f4cf7209ec1e25300e19c3dbd34934cc80d5d65b3db8bdb19c26ea661e58b567139d6ded8aed327ac8dbfcf7bb39ec9e39ff'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
