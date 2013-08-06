require 'acts_as_indexed'

begin
  Refinery::Blog::Post.class_eval do
    acts_as_indexed :fields => [:title, :body]
  end
rescue NameError
end
