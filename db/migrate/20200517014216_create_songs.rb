class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.float :length
      t.text :lyrics
      t.boolean :bonus
      t.references :disc, null: false, foreign_key: true

      t.timestamps
    end
  end
end
