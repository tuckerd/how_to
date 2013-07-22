require 'spec_helper'

feature 'Creating Topics' do
  before do
    visit '/'
    click_link 'New Topic'
  end

  scenario "can create a topic" do
    fill_in 'How to...', with: 'Making a Sandwich'
    fill_in 'Short Description (Optional)', with: 'How to make a pb&j'
    click_button 'Create Topic'
    page.should have_content('How To Topic was successfully created.')
  end

  scenario "can not create a topic without a name" do
    click_button 'Create Topic'
    page.should have_content("How To Topic was not created.")
    page.should have_content("Title can't be blank")
  end
end
