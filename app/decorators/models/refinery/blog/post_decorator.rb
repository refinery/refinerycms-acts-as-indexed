require 'acts_as_indexed'

module RefineryBlogPostAddActsAsIndexed
  def self.prepended(base)
    base.acts_as_indexed fields: [:title, :custom_teaser, :body] unless self.respond_to? :with_query
  end
end

Refinery::Blog::Post.prepend(RefineryBlogPostAddActsAsIndexed) rescue NameError
