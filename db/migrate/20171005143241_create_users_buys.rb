class CreateUsersBuys < ActiveRecord::Migration
  def change
    create_table :users_buys do |t|

      t.timestamps
    end
  end
end
