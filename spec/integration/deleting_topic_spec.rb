require 'spec_helper'

feature "Deleting topics" do
  scenario "Deleting topics" do
    topic = Factory(:topic, title: "Eating a Hot Dog Nicely")
    visit '/'
    click_link "#{topic.id}"
    # page.should have_content("Project has been deleted.")

    visit '/'
    page.should_not have_content("Eating a Hot Dog Nicely")
  end
end
