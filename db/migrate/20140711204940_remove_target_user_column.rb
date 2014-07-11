class RemoveTargetUserColumn < ActiveRecord::Migration
  def change
    remove_column :salutes, :target_user
  end
end
