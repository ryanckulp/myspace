class AddActualFriendsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :real_friends, :integer
  end
end
