class Ci < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :phone_number, :email_address, :fax
  belongs_to :project
end
