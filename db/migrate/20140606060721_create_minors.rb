class CreateMinors < ActiveRecord::Migration
  def change
    create_table :minors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :ssn
      t.date :dob
      t.integer :age
      t.integer :grade

      t.timestamps
    end
  end
end
