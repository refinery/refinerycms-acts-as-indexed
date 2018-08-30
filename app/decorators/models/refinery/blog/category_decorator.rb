require 'acts_as_indexed'

module RefineryBlogCategoryAddActsAsIndexed
  def self.prepended(base)
    base.acts_as_indexed fields: [:title] unless self.respond_to? :with_query
  end
end

Refinery::Blog::Category.prepend(RefineryBlogCategoryAddActsAsIndexed) rescue NameError
