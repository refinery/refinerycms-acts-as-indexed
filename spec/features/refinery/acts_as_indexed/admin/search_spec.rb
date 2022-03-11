require "spec_helper"

module Refinery
  describe "search", :type => :feature do

    shared_examples "no result search" do
      it "returns no results" do
        fill_in "search", :with => "yada yada"
        click_button "Search"
        expect(page).to have_content("Sorry, no results found")
      end
    end

    describe "images extension" do
      let!(:image) { FactoryBot.create(:image) }
      before do
        visit refinery.admin_images_path
      end

      it "returns found image" do
        fill_in "search", :with => "beach"
        click_button "Search"

        within ".actions" do
          expect(page).to have_selector("a[href*='#{image.image_name}']")
        end
      end

      it_behaves_like "no result search"
    end

    describe "resources extension" do
      before do
        FactoryBot.create(:resource)
        visit refinery.admin_resources_path
      end

      it "returns found resource" do
        fill_in "search", :with => "cape"
        click_button "Search"
        expect(page).to have_content("Cape Town Tide Table")
      end

      it_behaves_like "no result search"
    end

    describe "pages extension" do
      before do
        FactoryBot.create(:page, :title => "Téléphone")
        visit refinery.admin_pages_path
      end

      it "returns found page without accents in the query" do
        fill_in "search", :with => "Telephone"
        click_button "Search"
        expect(page).to have_content("Téléphone")
      end

      it "returns found page with accents in the query" do
        fill_in "search", :with => "Téléphone"
        click_button "Search"
        expect(page).to have_content("Téléphone")
      end

      it_behaves_like "no result search"
    end
  end
end
