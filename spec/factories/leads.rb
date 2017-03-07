FactoryGirl.define do
  factory :lead do
    prefix "jr."
    title "welder"
    first_name "test"
    last_name  "test"
    organization_name "weld_it"
    phone_number "test"
    email "test@test.com"
    website "test.com"
  end
end
