class FixProblems < ActiveRecord::Migration
  def up
    create_table :fcontact_info do |t|
      t.string :name
    end
    create_table :fname do |t|
      t.string :phone_number
      t.string :email_address
      t.string :fax
    end
    create_table :fstatus do |t|
      t.string :current_status
    end
    create_table :fwork_type do |t|
      t.text :type_of_current_work
    end
    change_table :projects do|t|
      t.integer :status
      t.integer :work_type      
    end
  end

  def down
     drop_table :projects
  end
end
