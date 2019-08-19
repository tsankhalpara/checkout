require_relative './checkout'

class PromotionalRules

  def reduced_price(basket, items)
    if basket.count(001) >= 2
      items[001] = 8.50
    end
    sum = 0.00
    basket.each { |a| sum += items[a] }
    if sum > 60.00
      sum = (sum * 0.9).round(2)
    end
    return "£" + ('%.2f' % sum).to_s
  end

end
