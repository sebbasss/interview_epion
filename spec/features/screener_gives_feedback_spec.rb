require "rails_helper"

RSpec.feature "A patient submits the screener" do
  scenario "has a high score" do
    visit root_path
    click_on "Start check in"
    click_on "Start PHQ screener"
    choose("screener_question1_3")
    choose("screener_question2_3")
    click_on "Submit"

    expect(page).to have_content("Additional screaning should be completed")
  end

  scenario "has a low score" do
    visit root_path
    click_on "Start check in"
    click_on "Start PHQ screener"
    choose("screener_question1_1")
    choose("screener_question2_0")
    click_on "Submit"

    expect(page).to have_content("No additional screening required")
  end
end
