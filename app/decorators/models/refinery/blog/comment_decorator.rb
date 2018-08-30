require 'acts_as_indexed'

module RefineryBlogCommentAddActsAsIndexed
  def self.prepended(base)
    base.acts_as_indexed fields: [:name, :email, :message] unless self.respond_to? :with_query
  end
end

Refinery::Blog::Comment.prepend(RefineryBlogCommentAddActsAsIndexed) rescue NameError
