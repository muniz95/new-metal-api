class CreateSocialNetworks < ActiveRecord::Migration[7.1]
  def change
    create_table :social_networks do |t|
      t.string :name

      t.timestamps
    end
  end
end
