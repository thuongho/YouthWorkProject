class CreateSupervisors < ActiveRecord::Migration
  def change
    create_table :supervisors do |t|
      t.string :first_name, limit: 25
      t.string :last_name, limit: 25
      t.string :position, limit: 50
      t.string :signature_image_path
      t.integer :employer_id

      t.timestamps
    end
  end
end
