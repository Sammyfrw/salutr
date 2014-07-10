class AddColumnToSalutes < ActiveRecord::Migration
  def change
    add_column :salutes, :target_user, :string, null: false
  end
end
