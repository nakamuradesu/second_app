class AddFieldsToSearchrequests < ActiveRecord::Migration
  def change
    add_column :searchrequests, :title, :string
    add_column :searchrequests, :body, :text
  end
end
