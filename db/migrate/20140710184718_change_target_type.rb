class ChangeTargetType < ActiveRecord::Migration
  def change
    add_column :salutes, :receiver, :integer
  end
end
