class CreateInsightlies < ActiveRecord::Migration[5.0]
  def change
    create_table :insightlies do |t|
      t.timestamps
    end
  end
end
