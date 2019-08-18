class Checkout

  def initialize
    @items = {001 => 9.25, 002 => 45.00, 003 => 19.95}
    @basket = []
  end

  def scan(item)
    @basket << item
  end

  def total
    sum = 0.00
    @basket.each { |a| sum += @items[a] }
    return sum
  end

  def basket
    @basket
  end

end
