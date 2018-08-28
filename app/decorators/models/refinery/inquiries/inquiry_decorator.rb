require 'acts_as_indexed'

begin
  Refinery::Inquiries::Inquiry.class_eval do
    acts_as_indexed :fields => [:name, :email, :message, :phone] unless self.respond_to? :with_query
  end
rescue NameError
end
