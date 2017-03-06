require 'rails_helper'

describe Insightly, :vcr => true do
  # Lead
  it { should have_db_column :first_name }
  it { should have_db_column :last_name }
  it { should have_db_column :phone_number }
  it { should have_db_column :email }

  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :email }

  # organisation
  it { should have_db_column :name_of_organisation }
  it { should have_db_column :description_of_organisation }
  it { should have_db_column :organisation_email }
  it { should have_db_column :organisation_phone }
  it { should validate_presence_of :name_of_organisation }
  it { should validate_presence_of :description_of_organisation }
  it { should validate_presence_of :organisation_email }

  before :each do
    Insightly2.api_key = ENV['INSIGHTLY_API_KEY']
  end

  # it "create a lead" do
  #   Insightly.create_lead("first_name", "last_name", "phone_number", "email")
  #   expect(lead.status).to eq 200
  # end
end
