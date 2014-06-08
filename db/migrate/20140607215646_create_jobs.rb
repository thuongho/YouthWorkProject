class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :minor_id
      t.integer :employer_id
    end
    add_index :jobs, :minor_id
    add_index :jobs, :employer_id
  end
end

