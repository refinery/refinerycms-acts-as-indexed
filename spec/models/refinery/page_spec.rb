require 'spec_helper'

module Refinery
  describe Page, :type => :model do
    let(:page_title) { 'RSpec is great for testing too' }
    let(:page) { subject.class.new(:title => page_title, :deletable => true)}

    before do
      page.parts.new(:title => 'body', :content => "I'm the first page part for this page.", :position => 0)
      page.parts.new(:title => 'side body', :content => 'Closely followed by the second page part.', :position => 1)
    end

    it 'returns all page part content' do
      expect(page.all_page_part_content).to eq "<p>I'm the first page part for this page.</p> <p>Closely followed by the second page part.</p>"
    end
  end
end
