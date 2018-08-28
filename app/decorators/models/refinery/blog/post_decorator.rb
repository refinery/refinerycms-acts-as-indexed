require 'acts_as_indexed'

begin
  Refinery::Blog::Post.class_eval do
    acts_as_indexed :fields => [:title, :custom_teaser, :body] unless self.respond_to? :with_query
  end
rescue NameError
end
