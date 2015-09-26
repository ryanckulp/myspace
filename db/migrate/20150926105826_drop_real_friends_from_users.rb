class DropRealFriendsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :real_friends, :integer
  end
end
