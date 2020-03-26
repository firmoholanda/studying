class RenameFriendshipCollmns < ActiveRecord::Migration[5.2]
  def change
    rename_column :friendships, :active_frienship_id, :active_friend_id
    rename_column :friendships, :passive_frienship_id, :passive_friend_id
  end
end
