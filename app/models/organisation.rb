class Organisation < ApplicationRecord
  validates :name_of_organisation, :presence => true
  validates :description_of_organisation, :presence => true
  validates :organisation_email, :presence => true
  validates :street, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :zip_code, :presence => true
  validates :country, :presence => true
end
