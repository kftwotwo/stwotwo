class Lead < ApplicationRecord
  validates :title, :presence => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :organization_name, :presence => true
  validates :email, :presence => true
end
