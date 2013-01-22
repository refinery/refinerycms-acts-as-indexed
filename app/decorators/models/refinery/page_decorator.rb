require 'acts_as_indexed'

Refinery::Page.class_eval do
  # Docs for acts_as_indexed https://github.com/dougal/acts_as_indexed
  acts_as_indexed :fields => [:title, :meta_description,
                              :menu_title, :browser_title, :all_page_part_content]
end if defined?(Refinery::Page)
