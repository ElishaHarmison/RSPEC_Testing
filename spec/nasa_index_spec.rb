require_relative '../lib/nasa.rb'

describe Nasa do

  context "Testing the Nasa requirements" do
    before (:all) do
      @nasa_index_class = Nasa.new.nasa_index_service
      @nasa = @nasa_index_class.nasa
    end

    it "Nasa links" do
      expect(@nasa_index_class.get_id).to eq 3726710
    end

   end
end
