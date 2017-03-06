class CreateOrganisations < ActiveRecord::Migration[5.0]
  def change
    create_table :organisations do |t|
      t.string :name_of_organisation
      t.string :description_of_organisation
      t.string :organisation_email
      t.string :organisation_phone  
      t.timestamps
    end
  end
end
