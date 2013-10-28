FactoryGirl.define do
  factory :tracker do
    sequence(:name) {|n| "tracker #{n}" }
  end
end

