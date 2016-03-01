class TypeAllergy < ActiveRecord::Base
  has_many :type_allergy_users
  has_many :users, through: :type_allergy_users
end
