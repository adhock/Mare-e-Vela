# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_marevela_session',
  :secret      => 'a2705b61ae552cf3409b62b87167e5e19898d832df67b5ae3154191bfd4fa472e841b51e19837be44b7a94a717c28b3bafcf2b053d14bb0915b10477d5a13304'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
