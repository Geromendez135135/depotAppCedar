#---
# Excerpted from "Agile Web Development with Rails 7",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/rails7 for more book information.
#---
require "application_system_test_case"

class CartsTest < ApplicationSystemTestCase
  test "check dynamic fields" do
    visit store_index_url
    
    #load stuff in the cart so the cart appears on screen
    click_on 'Add to Cart', match: :first
    click_on 'Empty Cart'
    click_on 'Add to Cart', match: :first

    #assert that the cart is shown 
    assert_selector "h2", text: "Your Cart"
    
    #empty the cart so the cart disappears
    click_on 'Empty Cart'

    #assert that the cart is not shown anymore
    assert has_no_field?('Your Cart')

  end
end
