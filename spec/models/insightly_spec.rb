require 'rails_helper'

describe Insightly, :vcr => true do
  before :each do
    Insightly2.api_key = ENV['INSIGHTLY_API_KEY']
  end

  # it "create a lead" do
  #   Insightly.create_lead("first_name", "last_name", "phone_number", "email")
  #   expect(lead.status).to eq 200
  # end
end
