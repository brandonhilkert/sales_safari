require 'spec_helper'

describe "Creating a tracker" do
  it "has a new tracker button" do
    visit root_path
    expect(page).to have_button t("new_tracker_button")
  end

  it "has a get started button" do
    visit root_path
    expect(page).to have_button t("new_tracker_form_button")
  end

  it "successfully creates and views new tracker", js: true do
    name = "test"
    visit root_path

    click_on t("new_tracker_button")
    fill_in "tracker_name", with: name
    click_on t("new_tracker_form_button")
    expect(page).to have_content(name)
  end
end
