class CreateOrganisations < ActiveRecord::Migration[5.0]
  def change
    create_table :organisations do |t|
      t.string :name_of_organisation
      t.string :description_of_organisation
      t.string :organisation_email
      t.string :organisation_phone, :default => nil
      t.string :organisation_website, :default => nil
      t.string :street
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :country
      t.timestamps
    end
  end
end
