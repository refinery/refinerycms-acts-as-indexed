require 'acts_as_indexed'

module RefinerySettingAddActsAsIndexed
  def self.prepended(base)
    base.acts_as_indexed fields: [:name] unless self.respond_to? :with_query
  end
end

Refinery::Setting.prepend(RefinerySettingAddActsAsIndexed) rescue NameError
