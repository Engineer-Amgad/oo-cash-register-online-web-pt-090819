
class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end 
  
  def add_item(item, cost, quantity = 1)
    self.total = total + cost * quantity
  end 
  
  def apply_discount
    self.total = total * discount
  end 
end 