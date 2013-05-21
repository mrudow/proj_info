class CreateCis < ActiveRecord::Migration
  def change
    create_table :cis do |t|
      t.text :name
      t.text :phone_number
      t.text :email_address
      t.text :fax
      t.integer :project_id

      t.timestamps
    end
  end
end
