FactoryGirl.define do
  factory :subject do
    sequence(:name) {|n| "subject #{n}" }
    association :tracker, factory: :tracker
  end
end

