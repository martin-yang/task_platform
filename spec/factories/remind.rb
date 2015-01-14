FactoryGirl.define do
  factory :remind, class: Remind do
    content "test remind task"
    clook "2014-01-01 08:00:00"
    state "new"
  end
end
