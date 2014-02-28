require 'spec_helper'

describe "StaticPages" do

	subject { page }

  describe "Home page" do
  	before { visit root_path }
    
    it { should have_content('SignOn App') }

    it { should have_title(full_title('')) }

    it { should_not have_title('| Home') }
  end

  describe "Help page" do

  	it "should have the content 'Help'" do
  		visit help_path
  		expect(page).to have_content('Help')
  	end

  	it "should have the title 'Help'" do
  		visit help_path
  		expect(page).to have_title("Ruby on Rails SignOn App | Help")
  	end
  end

  describe "About page" do

  	it "should have the content 'About Us'" do
  		visit about_path
  		expect(page).to have_content('About Us')
  	end

  	it "should have the title 'About Us'" do
  		visit about_path
  		expect(page).to have_title("Ruby on Rails SignOn App | About Us")
  	end
  end
end
