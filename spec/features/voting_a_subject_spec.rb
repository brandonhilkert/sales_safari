require 'spec_helper'

describe "Voting a subject" do
  it "in increments the vote count" do
    subject = create(:subject)
    visit tracker_path(subject.tracker)

    click_on t("subject_vote_button")
    expect(page).to have_content 1
  end
end



