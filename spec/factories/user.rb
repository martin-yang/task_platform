FactoryGirl.define do
  factory :user, class: User do
    email "test@qq.com"
    password "12345678"
    password_confirmation "12345678"
  end

  factory :join_user, class: User do
    email "join_test@qq.com"
    password "12345678"
    password_confirmation "12345678"
  end
end
