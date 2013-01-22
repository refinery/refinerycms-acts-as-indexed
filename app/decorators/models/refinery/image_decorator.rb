require 'acts_as_indexed'

begin
  Refinery::Image.class_eval do
    # Docs for acts_as_indexed http://github.com/dougal/acts_as_indexed
    acts_as_indexed :fields => [:title]
  end
rescue NameError
end
