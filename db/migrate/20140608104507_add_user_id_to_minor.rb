class AddUserIdToMinor < ActiveRecord::Migration
  def change
    add_column :minors, :user_id, :integer
    add_index :minors, :user_id
  end
end
