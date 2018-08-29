require 'acts_as_indexed'

module RefineryInquiriesInquiryAddActsAsIndexed
  def self.prepended(base)
    base.acts_as_indexed fields: [:name, :email, :message, :phone] unless self.respond_to? :with_query
  end
end

Refinery::Inquiries::Inquiry.prepend(RefineryInquiriesInquiryAddActsAsIndexed) rescue NameError
