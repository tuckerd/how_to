require "spec_helper"

feature "Viewing topic" do
  before do

    sandwich = Factory(:topic, title: "Use Sudo")
    ticket2 = Factory(:step,
                    topic: sandwich,
                    position: "2",
                    content: "Enjoy")
    ticket = Factory(:step,
                    topic: sandwich,
                    position: "1",
                    content: "Write sudo make me a sandwich")


    visit '/'
    click_link "Use Sudo"
  end

  scenario "Viewing steps for a given project" do
    page.should have_content("Write sudo make me a sandwich")
    page.should have_content("Enjoy")

    click_link "1"
    page.should have_content("Write sudo make me a sandwich")
  end

  scenario "steps are in ascending order" do
    page.body.should match /Write.*Enjoy/m
  end
end

