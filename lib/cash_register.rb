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
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @basket = []
    @last_transaction = 0
  end
  
  def add_item(title, price, item = 1)
    self.total += (price*item)          # accepts a a title and a rice and increase 
    @last_transaction = price * item    # accepts an optional quantity
    item.times { @basket << title }     # doesn't forget about previous total
  end
  
  def apply_discount    # expected 800, got: 1000 = total
    if discount > 0
      discount_percentage = (100.00 - discount) * 0.01
      new_total = total * discount_percentage
      self.total = new_total.to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."            #can't use #puts or it will return nil
    end
  end
  
  def items
    @basket
  end
  
  def void_last_transaction
    # binding.pry
    self.total -= @last_transaction
  end
  
  
end
