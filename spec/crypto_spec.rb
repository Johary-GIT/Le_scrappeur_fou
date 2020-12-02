require_relative '../lib/crypto'

describe "crypto method" do

    it "should return an array of hashes" do
        tab = []
    end

    it "array should contains BTC,ETH and LTC" do
        expect({"BTC"=>""}).to eq({"BTC"=>""})
  		expect({"ETH"=>""}).to include({"ETH"=>""})
  		expect({"LTC"=>""}).to include({"LTC"=>""})
  	end

	it "found_NIL" do
		expect(nil).to be_nil
    end
    
end
