FactoryGirl.define do
  factory :task, class: Task do
    num Task.build_number
    state "new"
    name "task_name"
    content "test_task"
    association :user, factory: :user
  end
end
