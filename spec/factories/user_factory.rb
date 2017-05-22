FactoryGirl.define do
  factory :user do
    name          "Test"
    email         "test@test.com"
    referral_code "test_referral_code"
    password      "password"
  end
end
