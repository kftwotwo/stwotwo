FactoryGirl.define do
  factory :organisation do
    name_of_organisation "test"
    description_of_organisation "test"
    organisation_email "test"
    organisation_phone "123-123-1234"
    organisation_website "test.com"
    street "123 Ave."
    city "Portland"
    state "OR"
    zip_code "59001"
    country "US"
  end
end
