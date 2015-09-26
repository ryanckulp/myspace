class AddStuffToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :bio, :text
    add_column :users, :birthday, :string
    add_column :users, :fb_url, :string
  end
end
