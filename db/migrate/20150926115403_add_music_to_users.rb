class AddMusicToUsers < ActiveRecord::Migration
  def change
    add_column :users, :music, :string
  end
end
