module InsightlyService
  class Lead
    class << self
      def create(lead_attr)
        Insightly2.client.create_lead(
          :lead => {
            :saluation => lead_attr.prefix,
            :title => lead_attr.title,
            :first_name => lead_attr.first_name,
            :last_name => lead_attr.last_name,
            :organization_name => lead_attr.organization_name,
            :phone_number => lead_attr.phone_number,
            :email_address => lead_attr.email,
            :website_url => lead_attr.website
          }
        )
      end
    end
  end
end
