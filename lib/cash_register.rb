=begin
 CashRegister
  ::new
    sets an instance variable @total on initialization to zero
    optionally takes an employee discount on initialization (FAILED - 1)
  #total
    returns the current total
  #add_item
    accepts a title and a price and increases the total (FAILED - 2)
    also accepts an optional quantity (FAILED - 3)
    doesn't forget about the previous total (FAILED - 4)
  #apply_discount
    the cash register was initialized with an employee discount
      applies the discount to the total price (FAILED - 5)
      returns success message with updated total (FAILED - 6)
      reduces the total (FAILED - 7)
    the cash register was not initialized with an employee discount
      returns a string error message that there is no discount to apply (FAILED- 8)
  #items
    returns an array containing all items that have been added (FAILED - 9)
  #void_last_transaction
    subtracts the last transaction from the total (FAILED - 10)
=end
require 'pry'

class CashRegister
  attr_accessor :total, :discount, :previous_total
  
  def initialize(total = 0)
    @total = total
    @discount = 20
    @basket = []
  end
  
  def add_item(title, price, item = 1)
    total_price = self.total += (price*item)
  end
  
  def apply_discount
  binding.pry
    
  end
  
  
end
