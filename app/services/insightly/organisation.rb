module InsightlyService
  class Organisation
    class << self
      def create(organisation_attr)
        Insightly2.client.create_organisation(
          :organisation => {
          :organisation_name => organisation_attr.name_of_organisation,
          :background => organisation_attr.description_of_organisation,
          :work_email => organisation_attr.organisation_email,
          :contactinfos => [{:type =>"Phone", :subtype =>"", :label => "Work", :detail => organisation_attr.organisation_phone}],
          :contactinfos => [{:type =>"Website", :subtype =>"", :label => "Work", :detail => organisation_attr.organisation_website}],
          :addresses => [{:address_type => 'work', :street => organisation_attr.street, :city => organisation_attr.city, :state => organisation_attr.state, :post_code => organisation_attr.zip_code, :country => organisation_attr.country}]
          }
        )
      end
    end
  end
end
