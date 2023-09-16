class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  def add_product(product)  
    current_item = line_items.find_by(product_id: product.id)
    prod = Product.find(product.id)
    if current_item
      current_item.quantity += 1 
      current_item.price = current_item.quantity * prod.price
    else  
      current_item = line_items.build(product_id: product.id)
      current_item.price = prod.price
    end
    current_item
  end

  def total_price
    line_items.sum { |item| item.total_price }
  end
end
