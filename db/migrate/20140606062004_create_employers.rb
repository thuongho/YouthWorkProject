class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :business_name

      t.timestamps
    end
  end
end
