class CreateProjects < ActiveRecord::Migration
  def change
    create_table :Contact_info do |t|
      t.string :Name
    end
    create_table :Name do |t|
      t.string :Phone_Number
      t.string :Email_Address
      t.string :Fax
    end
    create_table :Status do |t|
      t.string :Current_Status
    end
    create_table :Work_Type do |t|
      t.text :Type_of_Current_Work do |t|
    end
  end
end
  
# <%= link_to "My Projects", projects_path %>
