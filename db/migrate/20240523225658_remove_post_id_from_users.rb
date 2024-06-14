class RemovePostIdFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :post_id, :integer
  end
end
