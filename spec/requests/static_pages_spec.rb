require 'spec_helper'

describe "Static pages" do

	let(:base_title) { "NEWHockey.com" }

  describe "Home page" do
  	it "should have the title 'NEWHockey.com | Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end

    it "should have the content 'Northeast Wisconsin Hockey'" do
      visit '/static_pages/home'
      expect(page).to have_content('Northeast Wisconsin Hockey')
    end
  end

  describe "Help page" do
  	it "should have the correct title 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_title("#{base_title} | Help")
  	end

  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end
  end	

  describe "About Page" do
  	it "should have the correct title 'About'" do
  		visit '/static_pages/about'
  		expect(page).to have_title("#{base_title} | About")
  	end

  	it "should have the content 'About'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About')
  	end
  end

  describe "Contact Page" do
  	it "should have the correct title 'Contact'" do
  		visit '/static_pages/contact'
  		expect(page).to have_title("#{base_title} | Contact")
  	end

  	it "should have the content 'Contact'" do
  		visit '/static_pages/contact'
  		expect(page).to have_content('Contact')
  	end
  end

end

