class CreateDiscs < ActiveRecord::Migration[6.0]
  def change
    create_table :discs do |t|
      t.string :title
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
