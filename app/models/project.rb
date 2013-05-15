class Project < ActiveRecord::Base
  attr_accessible :client, :contact_info, :date_of_last_contact, :description, :notes, :price, :project_name, :responsible_user, :status, :work_type
end
