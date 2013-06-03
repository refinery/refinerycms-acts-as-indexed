require 'acts_as_indexed'

begin
  Refinery::Inquiries::Inquiry.class_eval do
    acts_as_indexed :fields => [:name, :email, :message, :phone]
  end
rescue NameError
end
