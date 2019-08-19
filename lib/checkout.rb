require './lib/promotional_rules'
class Checkout

  attr_accessor :items, :basket, :price

  def initialize(promotional_rules)
    @items = {001 => 9.25, 002 => 45.00, 003 => 19.95}
    @basket = []
    @promotional_rules = promotional_rules
    @price = 0.00
  end

  def scan(item)
    @basket << item
    @price += @items[item]
  end

  def total
    @promotional_rules.reduced_price(@basket, @items)
  end

  def basket
    @basket
  end

end
