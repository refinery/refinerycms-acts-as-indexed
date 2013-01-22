require 'acts_as_indexed'

begin
  Refinery::Resource.class_eval do
    # Docs for acts_as_indexed http://github.com/dougal/acts_as_indexed
    acts_as_indexed :fields => [:file_name, :title, :type_of_content]
  end
rescue NameError
end
