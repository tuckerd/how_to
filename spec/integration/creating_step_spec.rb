require "spec_helper"

feature "Creating Tickets" do
  before do
    project = Factory(:topic, title: "Cutting a Pizza")

    visit '/'
    click_link "Cutting a Pizza"
    click_link "New Step"
    within("h1")  { page.should have_content("New Step") }
  end

  scenario "Creating a step" do
    fill_in "Step Number", with: "1"
    fill_in "Description", with: "Cut your pizza's into 12!"
    click_button "Create Step"
    page.should have_content("Step has been created.")
  end

  scenario "Creating a step without valid attributes fails" do
    click_button "Create Step"
    page.should have_content("Step has not been created.")
    page.should have_content("Order can't be blank")
    page.should have_content("Content can't be blank")
  end
end
