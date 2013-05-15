class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :contact_info
      t.string :status
      t.string :client
      t.string :price
      t.string :work_type
      t.text :description
      t.string :responsible_user
      t.text :notes

      t.timestamps
    end
  end
end
