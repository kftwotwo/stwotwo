module InsightlyService
  class Opportunity
    class << self
      def create(opportunity_attr)
        Insightly2.client.create_opportunity(
          :opportunity => {
          :opportunity_name => opportunity_attr.opportunity_name,
          :opportunity_details => opportunity_attr.opportunity_description,
          :opportunity_state => 'open',
          :customfields => [
            {
              :custom_field_id => 'OPPORTUNITY_FIELD_1',
              :field_value => opportunity_attr.opportunity_solution
            },
            {
              :custom_field_id => 'OPPORTUNITY_FIELD_2',
              :field_value => opportunity_attr.opportunity_solution_description
            }]
          }
        )
      end
    end
  end
end
