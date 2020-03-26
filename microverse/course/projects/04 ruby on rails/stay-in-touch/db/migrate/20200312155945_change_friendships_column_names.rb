class ChangeFriendshipsColumnNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :friendships, :user_id, :active_frienship_id
    rename_column :friendships, :friend_id, :passive_frienship_id
  end
end
