require 'spec_helper'

feature 'Creating Topics' do
  before do
    visit '/'
    click_link 'New Topic'
  end

  scenario "can create a topic" do
    fill_in 'Name', with: 'Making a Sandwich'
    fill_in 'Description', with: 'How to make a pb&j'
    click_button 'Create Topic'
    page.should have_content('Topic has been created.')

    # topic = topic.find_by_name("Making a Sandwich")
    # page.current_url.should == project_url(topic)
    # title = "TextMate 2 - Topics - Ticketee"
    # find("title").should have_content(title) 
  end

  # scenario "can not create a topic without a name" do
  #   click_button 'Create topic'
  #   page.should have_content("Topic has not been created.")
  #   page.should have_content("Name can't be blank")
  # end
end
