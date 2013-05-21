class CreateProjects < ActiveRecord::Migration
  def up
    create_table :projects do |t|
      t.string :project_name
      t.string :client
      t.string :price
      t.text :description
      t.string :responsible_user
      t.text :notes

      t.timestamps
    end
  end

  def down
    drop_table :projects
  end
end
