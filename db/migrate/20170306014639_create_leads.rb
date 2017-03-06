class CreateLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :leads do |t|
      t.string :prefix, :default => nil
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :organization_name
      t.string :phone_number
      t.string :email
      t.string :website
      t.timestamps
    end
  end
end
