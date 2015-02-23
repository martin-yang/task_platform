FactoryGirl.define do
  factory :task, class: Task do
  	name "task_name"
    content "test_task"
    association :user, factory: :user
  end
end
