require 'acts_as_indexed'

begin
  Refinery::Blog::Category.class_eval do
    acts_as_indexed :fields => [:title]
  end
rescue NameError
end
