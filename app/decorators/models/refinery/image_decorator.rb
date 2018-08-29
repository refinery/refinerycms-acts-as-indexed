require 'acts_as_indexed'

module RefineryImageAddActsAsIndexed
  def self.prepended(base)
    base.acts_as_indexed fields: [:title] unless self.respond_to? :with_query
  end
end

Refinery::Image.prepend(RefineryImageAddActsAsIndexed) rescue NameError
