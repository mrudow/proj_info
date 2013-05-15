class ProjectName < ActiveRecord::Migration
  def up
    change_table :projects do |t|
      t.string :project_name
    end
  end

  def down
  end
end
