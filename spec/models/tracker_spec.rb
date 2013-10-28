require 'spec_helper'

describe Tracker do
  context 'associations' do
    it { should have_many(:subjects).dependent(:destroy) }
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
  end
end
