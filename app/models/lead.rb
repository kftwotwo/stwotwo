class Lead < ApplicationRecord
  Insightly2.api_key = ENV['INSIGHTLY_API_KEY']

  validates :title, :presence => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :organization_name, :presence => true
  validates :email, :presence => true

  class << self
    
  end
end
