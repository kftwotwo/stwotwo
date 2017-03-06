class Opportunity < ApplicationRecord

  validates :opportunity_name, :presence => true
  validates :opportunity_description, :presence => true
  validates :opportunity_solution, :presence => true
  validates :opportunity_solution_description, :presence => true

  class << self
    def  create_opportunity(opportunity_name, opportunity_description, opportunity_solution, opportunity_solution_description)
      Insightly2.client.ccreate_opportunity(:opportunity => {
        :create_opportunity => create_opportunity,
        :opportunity_description => description_of_organisation,
        :customfields => [
          { :solution =>
            opportunity_solution
          },
          { :solutio_description =>
            opportunity_solution_description
          }]
        })
    end
  end
end
