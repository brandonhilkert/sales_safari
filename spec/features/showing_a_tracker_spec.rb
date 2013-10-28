require 'spec_helper'

describe "Showing a tracker" do
  let(:tracker) { create(:tracker) }

  it "displays name" do
    visit tracker_path(tracker)
    expect(page).to have_content tracker.name
  end
end

