require 'acts_as_indexed'

begin
  Refinery::User.class_eval do
    # Docs for acts_as_indexed http://github.com/dougal/acts_as_indexed
    acts_as_indexed :fields => [:username, :email]
  end
rescue NameError
end
