require './plane.rb'

describe Boeing737 do

  it "have empty fuel tanks after initialization" do
    pln=Boeing737.new
    expect(pln.fuel).to eq 0
  end

  it "can add fuel" do
    pln=Boeing737.new
    pln.add_fuel 3_000
    expect(pln.fuel).to eq 3_000
  end

  it "must show flight duration" do
    # arrange
    pln=Boeing737.new

    # act
    pln.add_fuel 5_200

    # assert
    expect(pln.flight_duration).to eq 2
  end

end