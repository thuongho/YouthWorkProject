class CreateMinorAddresses < ActiveRecord::Migration
  def change
    create_table :minor_addresses do |t|
      t.string :address_line_one, limit: 50
      t.string :address_line_two, limit: 50
      t.string :city, limit: 20
      t.string :zip, limit: 15
      t.string :phone, limit: 15

      t.timestamps
    end
  end
end
