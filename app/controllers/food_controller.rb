class FoodController < ApplicationController
  def search
    q = params[:q]
    return unless q.present?
  
    require 'net/http'
    uri = URI.parse("http://www.recipepuppy.com/api/?" + { q: q, type: 'title' }.to_query)
    json = Net::HTTP.get(uri)
    @results = JSON.parse(json)["results"]
  end
end
