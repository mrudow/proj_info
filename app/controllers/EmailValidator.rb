class EmailValidator < ActiveRecord::Validator
  def validate()
    record.errors[:email_address] << "is not valid" unless
    record.email_address =~ /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  end
end
