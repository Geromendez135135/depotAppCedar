class CopyProductPriceIntoLineItem < ActiveRecord::Migration[7.0]
  def up
    #for each cart and for each line item inside, take the price of the product and set 
    Cart.all.each do |cart|
      cart.line_items.each do |item|
        prod = Product.find(item.product_id)
        item.price = prod.price * item.quantity
        item.save!
      end
    end

  end
  def down
    #this wont be necessary as the change method in 'add_price_to_line_items' should simply delete the added column
    
  end
end
