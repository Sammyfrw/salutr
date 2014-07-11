class FixSenderIdForLastTime < ActiveRecord::Migration
  def change
  rename_column :salutes, :user_id, :sender_id
  end
end
