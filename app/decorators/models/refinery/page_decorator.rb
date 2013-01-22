require 'acts_as_indexed'

begin
  Refinery::Page.class_eval do
    # Docs for acts_as_indexed https://github.com/dougal/acts_as_indexed
    acts_as_indexed :fields => [:title, :meta_description,
                                :menu_title, :browser_title, :all_page_part_content]

    # Used to index all the content on this page so it can be easily searched.
    def all_page_part_content
      parts.map(&:body).join " "
    end
  end
rescue NameError
end
