
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
    if discount > 0 
      self.total = total * ((100 - discount)/100)
      
    else
      
    end 
  end 
end 