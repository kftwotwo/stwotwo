class CreateOpportunities < ActiveRecord::Migration[5.0]
  def change
    create_table :opportunities do |t|
      t.string :opportunity_name
      t.string :opportunity_description
      t.string :opportunity_solution
      t.string :opportunity_solution_description
      t.timestamps
    end
  end
end
