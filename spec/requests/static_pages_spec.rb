require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
  	it "should have the title 'NEWHockey.com | Home'" do
      visit '/static_pages/home'
      expect(page).to have_title('NEWHockey.com | Home')
    end

    it "should have the content 'Northeast Wisconsin Hockey'" do
      visit '/static_pages/home'
      expect(page).to have_content('Northeast Wisconsin Hockey')
    end
  end

  describe "Help page" do
  	it "should have the correct title 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_title('NEWHockey.com | Help')
  	end

  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end
  end	

  describe "About Page" do
  	it "should have the correct title 'About'" do
  		visit '/static_pages/about'
  		expect(page).to have_title('NEWHockey.com | About')
  	end

  	it "should have the content 'About'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About')
  	end
  end

end

