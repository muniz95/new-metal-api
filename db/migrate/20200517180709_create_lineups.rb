class CreateLineups < ActiveRecord::Migration[6.0]
  def change
    create_table :lineups do |t|
      t.string :role
      t.references :artist, null: false, foreign_key: true
      t.references :release, null: false, foreign_key: true

      t.timestamps
    end
  end
end
