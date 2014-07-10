class ChangeTargetType < ActiveRecord::Migration
  def change
    remove_column :salutes, :receiver
    add_column :salutes, :receiver, :integer
  end
end
