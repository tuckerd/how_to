require 'spec_helper'

feature "Editing Topics" do
  before do
    Factory(:topic, title: "Eating a Hot Dog")
    visit '/'
    click_link "Eating a Hot Dog"
    click_link "Edit"   
  end

  scenario "Updating a project" do
    fill_in "How to...", with: "Eating a Hot Dog 2.0"
    click_button "Update Topic"
    page.should have_content("How To Topic was successfully updated.")
  end

  scenario "Updating a project with invalid attributes is bad!" do
    fill_in "How to...", with: ''
    click_button "Update Topic"
    page.should have_content("How To Topic has not been created.")
  end
end 
