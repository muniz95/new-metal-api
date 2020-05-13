class CreateLabels < ActiveRecord::Migration[6.0]
  def change
    create_table :labels do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :status
      t.string :specialities
      t.datetime :founding_date
      t.string :online_shopping
      t.text :additional_notes
      t.text :description
      t.text :trivia
      t.string :added_by
      t.datetime :addition_date
      t.integer :parent_label_id
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
