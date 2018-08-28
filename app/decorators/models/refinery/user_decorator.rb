require 'acts_as_indexed'

begin
  Refinery::Authentication::Devise::User.class_eval do
    # Docs for acts_as_indexed http://github.com/dougal/acts_as_indexed
    acts_as_indexed :fields => [:username, :email] unless self.respond_to? :with_query
  end
rescue NameError
end
