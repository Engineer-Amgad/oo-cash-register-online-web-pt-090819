require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end 
  
  def add_item(item, cost, quantity = 1)
    self.total = total + cost * quantity
    @items << item
  end 
  
  def apply_discount
    if discount > 0 
      #binding.pry
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{total}."
      #binding.pry
    else
      "There is no discount to apply."
    end 
  end 
  
  def items
    
  end 
end 