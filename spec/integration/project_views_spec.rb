require 'spec_helper'
require 'capybara/rspec'

describe "the projects interface" do

  before(:all) do
    @projects = []
    3.times { @projects << Fabricate(:project) }
  end

  it "should list the project names on the index page" do
    visit projects_path
    @projects.each do |project|
      page.should have_content(project.name)
    end
  end

end

