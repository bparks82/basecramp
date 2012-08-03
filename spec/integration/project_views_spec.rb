require 'spec_helper'
require 'capybara/rspec'

describe "the projects interface" do

  before(:all) do
    @projects = []
    3.times { @projects << Fabricate(:project) }
    @user = Fabricate(:user)
  end

  it "should list the project names on the index page" do
    visit new_user_registration_path
    fill_in 'Email', :with => '#{@user.email}'
    fill_in 'Password', :with => '#{@user.password}'
    fill_in 'Password confirmation', :with => '#{@user.password}'
    click_link_or_button 'Sign up'
    visit projects_path
    @projects.each do |project|
      page.should have_content(project.name)
    end
  end

end

