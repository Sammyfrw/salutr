class FixUpMyScrewup < ActiveRecord::Migration
  def change
    change_column :salutes, :receiver, :integer, :null => false
  end
end
