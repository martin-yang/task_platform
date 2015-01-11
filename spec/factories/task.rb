FactoryGirl.define do
  factory :task, class: Task do
    content "test_task"
    association :user, factory: :user
  end
end
