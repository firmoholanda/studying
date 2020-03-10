class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.references :active_friend, index: true
      t.references :passive_friend, index: true
      t.boolean :approved

      t.timestamps
    end
    add_foreign_key :friendships, :users, column: :active_friend_id
    add_foreign_key :friendships, :users, column: :passive_friend_id
  end
end
