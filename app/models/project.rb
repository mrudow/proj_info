class Project < ActiveRecord::Base
  attr_accessible :attachment, :client, :contact_info, :current_status, :date_of_last_contact, :description, :email_address, :fax, :name, :notes, :phone_number, :price, :project_name, :responsible_user, :status, :type_of_current_work, :updated_on, :work_type, :ci_attributes
  WORK_TYPES= {0=>"Development", 1=>"Marketing", 2=>"Consulting", 3=>"Design"}
  STATUS={0=>"Lead", 1=>"Qualified", 2=>"Proposal", 3=>"Accepted", 4=>"Dead"}
  #has_attached_file :attachment, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  has_one :ci
  accepts_nested_attributes_for :ci
end
