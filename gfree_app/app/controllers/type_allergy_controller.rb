class TypeAllergyController < ApplicationController

def show

  @type_allergy = Type_allergy.all
  render :show
  end

end
