require 'spec_helper'

describe Subject do
  it 'creates a valid record' do
    expect {
      create(:subject)
    }.to change(Subject, :count).by(1)
  end

  context 'associations' do
    it { should belong_to(:tracker) }
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
  end
end
