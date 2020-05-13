class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :moniker
      t.datetime :birth
      t.datetime :death
      t.string :gender
      t.string :district
      t.string :city
      t.text :biography
      t.text :trivia
      t.references :user, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
