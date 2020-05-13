class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.datetime :birth
      t.string :favorite_genres
      t.text :biography
      t.string :email
      t.string :username
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
