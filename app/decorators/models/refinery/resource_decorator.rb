require 'acts_as_indexed'

module RefineryResourceAddActsAsIndexed
  def self.prepended(base)
    base.acts_as_indexed fields: [:file_name, :title, :type_of_content] unless self.respond_to? :with_query
  end
end

Refinery::Resource.prepend(RefineryResourceAddActsAsIndexed) rescue NameError
