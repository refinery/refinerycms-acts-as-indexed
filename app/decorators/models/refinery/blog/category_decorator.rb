require 'acts_as_indexed'

begin
  Refinery::Blog::Category.class_eval do
    acts_as_indexed :fields => [:title] unless self.respond_to? :with_query
  end
rescue NameError
end
