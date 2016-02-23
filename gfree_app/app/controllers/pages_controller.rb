class PagesController < ApplicationController
  def welcome
    binding.pry
    render :welcome
  end
end
