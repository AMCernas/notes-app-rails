class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :status, default: "1", null: false
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
