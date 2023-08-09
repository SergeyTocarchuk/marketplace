class ModifyEmailAttribute < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :email, :string, null: false, default: ""
    change_column :traders, :email, :string, null: false, default: ""
  end
end
