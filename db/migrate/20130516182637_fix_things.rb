class FixThings < ActiveRecord::Migration
  def up
   change_table :projects do |t|
      t.integer :attachment
    end
  end

  def down
    drop_table :projects
  end
end
