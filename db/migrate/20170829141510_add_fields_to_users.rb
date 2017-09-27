class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :admin, :boolean, default: false
    add_column :users, :address, :string
    add_column :users, :birthday, :date
    add_column :users, :bank_account, :string
    add_column :users, :credit, :string
  end
end
