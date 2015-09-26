class AddInterestsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :books, :string
    add_column :users, :television, :string
    add_column :users, :movies, :string
  end
end
