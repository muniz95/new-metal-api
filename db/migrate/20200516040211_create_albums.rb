class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.text :description
      t.string :album_type
      t.datetime :album_date
      t.string :genre
      t.string :format
      t.string :catalog_id
      t.text :additional_notes
      t.text :recording_information
      t.text :identifiers
      t.references :user, null: false, foreign_key: true
      t.references :label, null: true, foreign_key: true
      t.references :album, null: true, foreign_key: true

      t.timestamps
    end
  end
end
