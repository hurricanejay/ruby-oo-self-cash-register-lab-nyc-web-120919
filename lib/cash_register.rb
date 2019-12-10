require 'pry'
class CashRegister
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @item_array = []
    end
    def discount
         @discount
    end
    def total=(total)
        @total = total
    end

    def total
        @total
    end
    def product(title)
        @item_array << title
    end
    def items
        @item_array
    end

    def add_item(title, price, quantity = 1)
        @total += (price * quantity) 
        quantity.times do 
            product(title)
        end

    end
    def apply_discount
         if @discount != 0
            @total = total - total * discount / 100.00
            return "After the discount, the total comes to $#{@total.to_i}."
         else
            return "There is no discount to apply."
          end
    end

end