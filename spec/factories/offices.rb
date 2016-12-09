FactoryGirl.define do
  factory :office do
    # sequence(:name) { |n| "office#{n}" }
    name "My office"
    country "Russia"
    town "DefaultCity"
    postindex "123456"
    address "this is a address"
    note "this is a note"
    client_id 1
  end
end
