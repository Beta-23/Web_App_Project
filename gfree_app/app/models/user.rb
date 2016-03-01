class User < ActiveRecord::Base
  #validate uniqueness of email...
  has_secure_password

  has_many :type_allergy_users
  has_many :type_allergys, through: :type_allergy_users

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

end
