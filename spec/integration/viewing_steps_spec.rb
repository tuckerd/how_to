require "spec_helper"

feature "Viewing steps" do
  before do

    sandwich = Factory(:project, title: "TextMate 2")
    ticket = Factory(:ticket,
                    project: textmate_2,
                    title: "Make it shiny!",
                    description: "Gradients! Starbursts! Oh my!")
    ticket.update_attribute(:user, user)

    visit '/'
  end

  scenario "Viewing steps for a given project" do
    click_link "TextMate 2"
    page.should have_content("Make it shiny!")

    click_link "Make it shiny!"
    within("#ticket h2") do
      page.should have_content("Make it shiny!")
    end
    page.should have_content("Gradients! Starbursts! Oh my!")
  end
end

