require 'faulty_odometer'
describe FaultyOdometer do
    faulty_odometer = FaultyOdometer.new
    it "input 3 returns 3" do
        expect(faulty_odometer.display_real_mileage(3)).to eq(3)
    end

    it "input 6 returns 5" do
        expect(faulty_odometer.display_real_mileage(6)).to eq(5)
    end

    it "input 2003 returns 1469" do
        expect(faulty_odometer.display_real_mileage(2003)).to eq(1461)
    end
end