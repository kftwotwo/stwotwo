class Insightly < ApplicationRecord
  Insightly2.api_key = ENV['INSIGHTLY_API_KEY']

  class << self
    def create_lead(first_name, last_name, phone_number, email)
      Insightly2.client.create_lead(:lead => {:first_name => first_name, :last_name => last_name, :phone_number => phone_number, :email_address => email})
    end
  end
end
