require 'pry'
def find_item_by_name_in_collection(name, collection)
  collection.find {|item| item[:item] == name}
end

def consolidate_cart(cart)
count = 0
updated_cart = []
while count < cart.length do
new_cart_item = find_item_by_name_in_collection(cart[count][:item], updated_cart)
if new_cart_item
  new_cart_item[:count] += 1
else
  new_cart_item = {
    :item => cart[count][:item],
    :price => cart[count][:price],
    :clearance => cart[count][:clearance],
    :count => 1
  }
  updated_cart << new_cart_item
  end
  count += 1
  end
  updated_cart
end



# Consult README for inputs and outputs
#
# REMEMBER: This returns a new Array that represents the cart. Don't merely
# change `cart` (i.e. mutate) it. It's easier to return a new thing.
