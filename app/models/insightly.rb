class Insightly < ApplicationRecord
  Insightly2.api_key = ENV['INSIGHTLY_API_KEY']

  class << self
    def get_contacts
      Insightly2.client.get_contacts
    end
  end
end
