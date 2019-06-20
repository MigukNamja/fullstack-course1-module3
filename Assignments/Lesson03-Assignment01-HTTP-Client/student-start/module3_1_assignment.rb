require 'httparty'

class Recipe
  include HTTParty

  base_uri 'https://food2fork.com/api/search'
  default_params key: '2e485d18e860821862f4b4a909648504'
  format :json

  def self.for keyword
    get("", query: { query: keyword})["recipes"]
  end
end
