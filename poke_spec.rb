# подключаем файл с тестируемым классом
require './pokemon.rb'

# тестируем класс-покемон
describe Pokemon do 

  # проверяем, становится ли заглавной первая буква имени
  it "has a capitalized name" do
    pok=Pokemon.new 'pikachu'
    expect(pok.name).to eq 'Pikachu'
  end

  # проверяем, работает ли увеличение силы
  it "can power up" do
    pok=Pokemon.new 'bulbasaur', 20
    expect(pok.power_up(30)).to eq 50
  end

  # проверяем, работает ли уменьшение силы
  it "can power down" do
    pok=Pokemon.new 'ratata', 40
    expect(pok.power_down(5)).to eq 35
  end

  # проверяем, выводится ли информация о покемоне
  it "can get info" do
    pok=Pokemon.new 'meouth'
    expect(pok.info).to eq 'Meouth-0'
  end

end