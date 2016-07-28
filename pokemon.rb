# класс - покемон

class Pokemon

  # у каждого покемона есть имя и сила    
  attr_reader :name, :cp

  # при создании покемона имя начинается с большой буквы, а сила (если не указано) равна 0
  def initialize(name, cp=0)
    @name=name.capitalize
    @cp=cp
  end

  # увеличение силы на pow
  def power_up(pow)
    @cp+=pow.to_i
  end

  # уменьшение силы на pow
  def power_down(pow)
    @cp-=pow.to_i
  end

  # вывод информации о покемоне
  def info
    "#{@name}-#{@cp}"
  end

end

# p=Pokemon.new 'Bulbazaur', 20
# puts p.name
# puts p.cp
# puts p.power_up 100
# puts p.power_down 10
# puts p.info
