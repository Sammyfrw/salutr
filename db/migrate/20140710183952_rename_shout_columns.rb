class RenameShoutColumns < ActiveRecord::Migration
  def change
    rename_column :salutes, :sender, :sender_id
    rename_column :salutes, :receiver, :receiver_id
  end
end
