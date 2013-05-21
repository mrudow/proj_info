class Update < ActiveRecord::Migration
def up
    change_table :projects do |t|
      t.datetime :updated_on
    end
  end

  def down
    drop_table :projects  
  end
end 
