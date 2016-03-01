class TypeAllergyUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :type_allergy
end
