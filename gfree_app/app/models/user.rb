class User < ActiveRecord::Base
  #validate uniqueness of email...
  has_secure_password
end
