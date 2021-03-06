class CreateEmployerAddresses < ActiveRecord::Migration
  def change
    create_table :employer_addresses do |t|
      t.string :address_line_one, limit: 50
      t.string :address_line_two, limit: 50
      t.string :city, limit: 20
      t.string :zip, limit: 15
      t.string :phone, limit: 15
      t.integer :employer_id

      t.timestamps
    end
  end
end
