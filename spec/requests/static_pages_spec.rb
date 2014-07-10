require 'spec_helper'

describe "static_pages" do

  describe "Home page" do

    it "should have content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end

    it "should have a custome page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end
end
