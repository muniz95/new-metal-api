class AddJtiToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :jti, :string, null: false, default: ""
  end
end
