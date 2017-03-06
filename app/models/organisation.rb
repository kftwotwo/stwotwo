class Organisation < ApplicationRecord
  Insightly2.api_key = ENV['INSIGHTLY_API_KEY']

  validates :name_of_organisation, :presence => true
  validates :description_of_organisation, :presence => true
  validates :organisation_email, :presence => true
  validates :street, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :zip_code, :presence => true
  validates :country, :presence => true

  class << self
    def create_organisation(name_of_organisation, description_of_organisation, organisation_email, organisation_phone, organisation_website, street, city, state, zip_code, country)
      Insightly2.client.create_organisation(:organisation => {
        :organisation_name => name_of_organisation,
        :background => description_of_organisation,
        :work_email => organisation_email,
        :contactinfos => [{:type =>"Phone", :subtype =>"", :label => "Work", :detail => organisation_phone}],
        :contactinfos => [{:type =>"Website", :subtype =>"", :label => "Work", :detail => organisation_website}],
        :addresses => [{:address_type => 'work', :street => street, :city => city, :state => state, :post_code => zip_code, :country => country}]
        })
    end
  end
end
