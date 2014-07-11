class RenameReceiverAndSender < ActiveRecord::Migration
  def change

  rename_column :salutes, :receiver, :receiver_id
  end
end
