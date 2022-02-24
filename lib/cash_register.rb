require 'pry'

class CashRegister
    
    attr_accessor :total, :discount, :items

    def initialize (discount=0)
        @total=0
        @discount=discount
        @items=[]
    end

    def add_item (title, price, quantity=1)
        self.total+=price*quantity
        quantity.times do
            self.items << title
    end

    def apply_discount
        if self.discount>0
        self.total*=(1-discount.to_f*0.01)
        self.total.to_i
        "After the discount, the total comes to #{total}"
        elsif self.discount==0
        "There is no discount to apply."
        end
    end
end

binding.pry
0