class CreateSimilarities < ActiveRecord::Migration[6.0]
  def change
    create_table :similarities do |t|
      t.references :left_band, foreign_key: { to_table: 'bands' }
      t.references :right_band, foreign_key: { to_table: 'bands' }

      t.timestamps
    end
  end
end
