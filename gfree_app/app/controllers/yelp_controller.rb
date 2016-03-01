require 'yelp'

class YelpController < ApplicationController

  def search
    parameters = { term: params[:term], limit: 16 }
    # render json: Yelp.client.search('San Francisco', parameters)

    client = Yelp::Client.new({ consumer_key: ENV["consumer_key"],
      consumer_secret: ENV["consumer_secret"],
      token: ENV["token"],
      token_secret: ENV["token_secret"]
      })
    response = Yelp.client.search('San Francisco', parameters)
    businesses = response.businesses
    @results = businesses.map do |business|
      {name: business.name, categories: business.categories}
    end
    render :search

    # TODO: iterate over businesses
    # TODO: add relevant data to array of business objects
    # TODO: render page with data
    # TODO: render :results # need to make results.html.erb
  end
end