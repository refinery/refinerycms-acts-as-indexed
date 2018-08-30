require 'acts_as_indexed'

module RefineryAuthenticationDeviseUserAddActsAsIndexed
  def self.prepended(base)
    base.acts_as_indexed fields: [:username, :email] unless self.respond_to? :with_query
  end
end

Refinery::Authentication::Devise::User.prepend(RefineryAuthenticationDeviseUserAddActsAsIndexed) rescue NameError
