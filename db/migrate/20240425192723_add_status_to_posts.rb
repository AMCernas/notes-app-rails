class AddStatusToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :status, :string, default: 1, null: false
  end
end
