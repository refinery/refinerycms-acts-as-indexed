require 'acts_as_indexed'

module RefineryPageAddActsAsIndexed
  def self.prepended(base)
    unless self.respond_to? :with_query
      base.acts_as_indexed(fields: [
        :ascii_title, :meta_description,
        :menu_title, :browser_title, :ascii_all_page_part_content
      ])
    end
  end

  # Used to index all the content on this page so it can be easily searched.
  def all_page_part_content
    parts.map(&:body).join " "
  end

  private

  def ascii_title
    self.title.try(&:to_ascii)
  end

  def ascii_all_page_part_content
    self.all_page_part_content.try(&:to_ascii)
  end
end

Refinery::Page.prepend(RefineryPageAddActsAsIndexed) rescue NameError
