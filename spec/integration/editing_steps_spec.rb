require "spec_helper"

feature "Editing step" do
  let!(:topic) { Factory(:topic) }
  let!(:step) do 
    step = Factory(:step, topic: topic)
  end

  before do
    visit '/'
    click_link topic.title
    click_link "#{step.position}"
    click_link "Edit Step"
  end

  scenario "Updating a step" do
    fill_in "Description", with: "Do some good things with bread"
    click_button "Update Step"
    page.should have_content "Step has been updated."
    within("#step") do
      page.should have_content("Do some good things with bread")
    end
    page.should_not have_content step.content
  end

  scenario "Updating a step with invalid information" do
    fill_in "Description", with: ""
    click_button "Update Step"
    page.should have_content("Step has not been updated.")
  end
end
