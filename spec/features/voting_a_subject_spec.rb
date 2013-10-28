require 'spec_helper'

describe "Voting a subject" do
  it "in increments the vote count" do
    s = create(:subject, votes: 2)
    visit tracker_path(s.tracker)

    click_on t("subject_vote_button")
    expect(page).to have_content 3
  end
end



