require './pokemon.rb'

describe Pokemon do 

  it "has a capitalized name" do
    pok=Pokemon.new 'pikachu'
    expect(pok.name).to eq 'Pikachu'
  end

  it "can power up" do
    pok=Pokemon.new 'bulbasaur', 20
    expect(pok.power_up(30)).to eq 50
  end

  it "can power down" do
    pok=Pokemon.new 'ratata', 40
    expect(pok.power_down(5)).to eq 35
  end

  it "can get info" do
    pok=Pokemon.new 'meouth'
    expect(pok.info).to eq 'Meouth-0'
  end

end