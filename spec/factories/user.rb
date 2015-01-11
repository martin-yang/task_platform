FactoryGirl.define do
  factory :user, class: User do
    email "408290909@qq.com"
    password "12345678"
    password_confirmation "12345678"
  end
end
