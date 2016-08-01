require './plane.rb'

describe Boeing737 do

  it "have empty fuel tanks after initialization" do
    pln=Boeing737.new
    expect(pln.fuel).to eq 0
  end

  it "can add fuel" do
    pln=Boeing737.new
    pln.add_fuel 3.000
    expect(pln.fuel).to eq 3.000
  end

  it "must show flight duration" do
    # arrange
    pln=Boeing737.new

    # act
    pln.add_fuel 5.200

    # assert
    expect(pln.flight_duration).to eq 2
  end

end