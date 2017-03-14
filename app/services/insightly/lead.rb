module InsightlyService
  class Lead
    class << self
      def create(lead_attr)
        Insightly2.client.create_lead(
          :lead => {
            :first_name => lead_attr.first_name,
            :last_name => lead_attr.last_name,
            :title => lead_attr.title,
            :organization_name => lead_attr.organization_name,
            :phone_number => lead_attr.phone_number,
            :email_address => lead_attr.email,
            :customfields => [
            {
              :custom_field_id => 'LEAD_FIELD_1',
              :field_value => lead_attr.training_solution
            },
            {
              :custom_field_id => 'LEAD_FIELD_2',
              :field_value => lead_attr.training_solution_description
            }]
          }
        )
      end
    end
  end
end
