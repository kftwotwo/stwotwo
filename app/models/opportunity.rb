class Opportunity < ApplicationRecord
  validates :opportunity_name, :presence => true
  validates :opportunity_description, :presence => true
  validates :opportunity_solution, :presence => true
  validates :opportunity_solution_description, :presence => true
end
