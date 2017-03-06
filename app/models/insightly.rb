class Insightly < ApplicationRecord
  Insightly2.api_key = ENV['INSIGHTLY_API_KEY']

  # Lead
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :email, :presence => true

  # Organisation
  validates :name_of_organisation, :presence => true
  validates :description_of_organisation, :presence => true
  validates :organisation_email, :presence => true

  class << self
    def create_lead(first_name, last_name, phone_number, email)
      Insightly2.client.create_lead(:lead => {:first_name => first_name, :last_name => last_name, :phone_number => phone_number, :email_address => email})
    end

    def  create_organisation(name_of_organisation, description_of_organisation, organisation_email, organisation_phone)
      Insightly2.client.create_organisation(:organisation => {
        :organisation_name => name_of_organisation,
        :background => description_of_organisation,
          :work_email => organisation_email,
          :contactinfos => [{:type =>"Phone", :subtype =>"", :label => "Work", :detail => organisation_phone}]
        })
    end
  end
end
