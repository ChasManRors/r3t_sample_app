require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  # describe "Home page" do

  #   it "should have the h1 'Sample App'" do
  #     visit home_path
  #     page.should have_selector('h1', :text => 'Sample App')
  #   end

  #   it "should have the base title" do
  #     visit home_path
  #     page.should have_selector('title',
  #                       :text => "Ruby on Rails Tutorial Sample App")
  #   end

  #   it "should not have a custom page title" do
  #     visit home_path
  #     page.should_not have_selector('title', :text => '| Home')
  #   end
  # end

  # describe "Home page" do

  #   it "should have the h1 'Sample App'" do
  #     visit home_path
  #     page.should have_selector('h1', :text => 'Sample App')
  #   end

  #   it "should have the title 'Home'" do
  #     visit home_path
  #     page.should have_selector('title',
  #                       :text => "Ruby on Rails Tutorial Sample App")
  #   end
  # end

  # subject { page }

  # describe "Home page" do
  #   before { visit root_path }
  #   it { should have_selector('h1',    text: 'Sample App') }
  #   it { should have_selector('title', text: full_title('')) }
  #   it { should_not have_selector 'title', text: '| Home' }
  # end

  # describe "Help page" do
  #   before { visit help_path }

  #   it { should have_selector('h1',    text: 'Help') }
  #   it { should have_selector('title', text: full_title('Help')) }
  # end

  # describe "About page" do
  #   before { visit about_path }

  #   it { should have_selector('h1',    text: 'About') }
  #   it { should have_selector('title', text: full_title('About Us')) }
  # end

  # describe "Contact page" do
  #   before { visit contact_path }

  #   it { should have_selector('h1',    text: 'Contact') }
  #   it { should have_selector('title', text: full_title('Contact')) }
  # end



  # describe "Help page" do

  #   it "should have the h1 'Help'" do
  #     visit help_path
  #     page.should have_selector('h1', :text => 'Help')
  #   end

  #   it "should have the title 'Help'" do
  #     visit help_path
  #     page.should have_selector('title',
  #                       :text => "Ruby on Rails Tutorial Sample App | Help")
  #   end
  # end

  # describe "About page" do

  #   it "should have the h1 'About Us'" do
  #     visit about_path
  #     page.should have_selector('h1', :text => 'About Us')
  #   end

  #   it "should have the title 'About Us'" do
  #     visit about_path
  #     page.should have_selector('title',
  #                   :text => "Ruby on Rails Tutorial Sample App | About Us")
  #   end
  # end

  # describe "Contact Page" do

  #   it "should have the h1 'Contact'" do
  #     visit contact_path
  #     page.should have_selector('h1', :text => 'Contact')
  #   end

  #   it "should have the title 'Contact'" do
  #     visit contact_path
  #     page.should have_selector('title',
  #                   :text => "Ruby on Rails Tutorial Sample App | Contact")
  #   end
  # end


  require 'spec_helper'

  describe "Static pages" do

    subject { page }

    shared_examples_for "all static pages" do
      it { should have_selector('h1',    text: heading) }
      it { should have_selector('title', text: full_title(page_title)) }
    end

    describe "Home page" do
      before { visit root_path }
      let(:heading)    { 'Sample App' }
      let(:page_title) { '' }

      it_should_behave_like "all static pages"
      it { should_not have_selector 'title', text: '| Home' }
    end

    describe "Help page" do
      before { visit help_path }
      let(:heading)    { 'Help' }
      let(:page_title) { 'Help' }
      it_should_behave_like "all static pages"

    end

    describe "About page" do
      before { visit about_path }
      let(:heading)    { 'About' }
      let(:page_title) { 'About Us' }
      it_should_behave_like "all static pages"

    end

    describe "Contact page" do
      before { visit contact_path }
      let(:heading)    { 'Contact' }
      let(:page_title) { 'Contact' }
      it_should_behave_like "all static pages"

    end




    describe "Clicks" do

      it "should have the right links on the layout" do
        visit root_path
        click_link "About"
        page.should have_selector 'title', text: full_title('About Us')
        click_link "Help"
        page.should have_selector 'title', text: full_title('Help')
        click_link "Contact"
        page.should have_selector 'title', text: full_title('Contact')
        click_link "Home"
        click_link "Sign up now!"
        page.should have_selector 'title', text: full_title('Sign Up')
      end

    end

  end
end
