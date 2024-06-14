class AddUserNumToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :user_num, :integer
  end
end
