class RemoveColumnsFromMinors < ActiveRecord::Migration
  def change
    remove_column :minors, :email
    remove_column :minors, :encrypted_password
    remove_column :minors, :reset_password_token
    remove_column :minors, :reset_password_sent_at
    remove_column :minors, :remember_created_at
    remove_column :minors, :sign_in_count
    remove_column :minors, :current_sign_in_at
    remove_column :minors, :last_sign_in_at
    remove_column :minors, :current_sign_in_ip
    remove_column :minors, :last_sign_in_ip
  end
end
