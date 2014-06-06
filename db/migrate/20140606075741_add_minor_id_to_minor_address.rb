class AddMinorIdToMinorAddress < ActiveRecord::Migration
  def change
    add_column :minor_addresses, :minor_id, :integer
  end
end
