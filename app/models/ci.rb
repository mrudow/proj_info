class Ci < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :phone_number, :email_address, :fax
  belongs_to :project
  validates_format_of :email_address, :with=> /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i

end

