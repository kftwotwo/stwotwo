class Opportunity < ApplicationRecord
  Insightly2.api_key = ENV['INSIGHTLY_API_KEY']

  validates :opportunity_name, :presence => true
  validates :opportunity_description, :presence => true
  validates :opportunity_solution, :presence => true
  validates :opportunity_solution_description, :presence => true

  class << self
    def create_opportunity(opportunity_name, opportunity_description, opportunity_solution, opportunity_solution_description)
      Insightly2.client.create_opportunity(:opportunity => {
        :opportunity_name => opportunity_name,
        :opportunity_details => opportunity_description,
        :opportunity_state => 'open',
        :customfields => [
          {
            :custom_field_id => 'OPPORTUNITY_FIELD_1',
            :field_value => opportunity_solution
          },
          {
            :custom_field_id => 'OPPORTUNITY_FIELD_2',
            :field_value => opportunity_solution_description
          }]
        })
    end
  end
end
