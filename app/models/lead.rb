class Lead < ApplicationRecord
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :title, :presence => true
  validates :organization_name, :presence => true
  validates :email, :presence => true
  validates :training_solution, :presence => true
  validates :training_solution_description, :presence => true
end
