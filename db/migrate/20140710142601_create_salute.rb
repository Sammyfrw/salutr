class CreateSalute < ActiveRecord::Migration
  def change
    create_table :salutes do |t|
      t.string :body, null: false
      t.integer :user_id, null: false
      t.timestamps null: false
    end
    add_index :salutes, :user_id
  end
end
