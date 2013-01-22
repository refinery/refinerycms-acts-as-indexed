require 'acts_as_indexed'

Refinery::User.class_eval do
  # Docs for acts_as_indexed http://github.com/dougal/acts_as_indexed
  acts_as_indexed :fields => [:username, :email]
end if defined?(Refinery::User)
