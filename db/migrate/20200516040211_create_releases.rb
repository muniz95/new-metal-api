class CreateReleases < ActiveRecord::Migration[6.0]
  def change
    create_table :releases do |t|
      t.string :name
      t.text :description
      t.string :release_type
      t.datetime :release_date
      t.string :genre
      t.string :format
      t.string :catalog_id
      t.text :additional_notes
      t.text :recording_information
      t.text :identifiers
      t.references :user, null: false, foreign_key: true
      t.references :label, null: true, foreign_key: true
      t.references :release, null: true, foreign_key: true

      t.timestamps
    end
  end
end
