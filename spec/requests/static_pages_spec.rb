require 'spec_helper'

describe "Static Pages" do

  describe "Home Page" do

    it "should have the h1 'Movie Time'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'MovieTime')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "MovieTime | Home")
    end
  end

  describe "Help Page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "MovieTime | Help")
    end

  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => 'MovieTime | About Us')
    end
  end


end
