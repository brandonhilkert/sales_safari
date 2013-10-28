require 'spec_helper'

describe "Adding a subject" do
  let(:tracker) { create(:tracker) }

  it "displays the new subject" do
    name = "asdf"
    visit tracker_path(tracker)

    fill_in "subject_name", with: name
    click_on t("new_subject_button")
    expect(page).to have_content tracker.name
  end
end


