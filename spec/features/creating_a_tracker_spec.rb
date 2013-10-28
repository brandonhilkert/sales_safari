require 'spec_helper'

describe "Creating a tracker" do
  it "loads the page" do
    visit root_url
    expect(page).to have_button default_button
  end

  def default_button
    t("new_tracker_button")
  end
end
