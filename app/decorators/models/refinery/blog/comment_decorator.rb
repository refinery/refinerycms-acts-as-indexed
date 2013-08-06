require 'acts_as_indexed'

begin
  Refinery::Blog::Comment.class_eval do
    acts_as_indexed :fields => [:name, :email, :message]
  end
rescue NameError
end
