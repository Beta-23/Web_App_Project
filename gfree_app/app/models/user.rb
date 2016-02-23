class User < ActiveRecord::Base
  #validate uniqueness of email...
  has_secure_password

  def self.confirm(email, password)
    user = User.find_by_email(email)
    user.authenticate(password)
  end
  
end
