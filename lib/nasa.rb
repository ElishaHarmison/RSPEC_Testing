require_relative 'services/nasa_index.rb'

class Nasa

  def nasa_index_service
    NasaIndexService.new
  end

end
