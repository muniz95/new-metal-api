class CreateBandStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :band_statuses do |t|
      t.string :title
      t.string :color

      t.timestamps
    end
  end
end
