require 'spec_helper'

describe "Creating a tracker" do
  it "has a new tracker button" do
    visit root_url
    expect(page).to have_button t("new_tracker_button")
  end

  it "has a get started button" do
    visit root_url
    expect(page).to have_button t("new_tracker_form_button")
  end
end
