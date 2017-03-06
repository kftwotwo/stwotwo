class CreateInsightlies < ActiveRecord::Migration[5.0]
  def change
    create_table :insightlies do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.string :name_of_organisation
      t.string :description_of_organisation
      t.string :organisation_email
      t.string :organisation_phone      
      t.timestamps
    end
  end
end
