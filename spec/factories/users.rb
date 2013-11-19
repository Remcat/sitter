# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    title "MyString"
    first_name "MyString"
    last_name "MyString"
    email "MyString"
    pasword_digest "MyString"
    remember_toke "MyString"
    admin false
  end
end
