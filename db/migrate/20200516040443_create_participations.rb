class CreateParticipations < ActiveRecord::Migration[6.0]
  def change
    create_table :participations do |t|
      t.references :band, null: false, foreign_key: true
      t.references :release, null: false, foreign_key: true

      t.timestamps
    end
  end
end
