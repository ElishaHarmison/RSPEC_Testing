require 'json'
require 'httparty'

class NasaIndexService
  include HTTParty
  base_uri 'https://api.nasa.gov/neo/rest/v1/feed?start_date=2015-09-07&end_date=2015-09-08&api_key='

  attr_accessor :nasa

  def intialize
    @api_key = "m1ioNTRnMOHEYe6hVXh5MZNhj8K4eRAWKSevNepv"
    @nasa = JSON.parse(self.class.get("&api_key=#{api_key}").body).first
  end

  def get_id
    @nasa["2015-09-08"]["id"]
  end
end
