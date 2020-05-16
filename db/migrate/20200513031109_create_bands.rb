class CreateBands < ActiveRecord::Migration[6.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :genre
      t.string :location
      t.datetime :formed_in
      t.string :themes
      t.string :photo
      t.text :info
      t.boolean :approved
      t.references :user, null: false, foreign_key: true
      t.references :band_status, null: false, foreign_key: true
      t.references :label, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
