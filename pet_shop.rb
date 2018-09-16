def pet_shop_name(shops)
  shops[:name]
end

def total_cash(shops)
  shops[:admin][:total_cash]
end

def add_or_remove_cash(shops, amount)
  shops[:admin][:total_cash] += amount
end

def pets_sold(shops)
  shops[:admin][:pets_sold]
end

def increase_pets_sold(shops, new_sales)
  shops[:admin][:pets_sold] += new_sales
end

def stock_count(shops)
  shops[:pets].length
end

def pets_by_breed(shops, searched_breed)
  pets_of_breed = []
  for pet in shops[:pets]
    if pet[:breed] == searched_breed
      pets_of_breed.push(pet)
    end
  end
  return pets_of_breed
end

def find_pet_by_name(shops, searched_name)
  #search_result = {}
  for pet in shops[:pets]
    if pet[:name] == searched_name
      return pet
    end
  end
  return nil
end


# def remove_pet_by_name(shops, searched_name)
#   for pet in shops[:pets]
#     if pet[:name] == searched_name
#       shops[:pets].delete(pet)
#     end
#   end
# end

def remove_pet_by_name(shops, searched_name)
  pet = find_pet_by_name(shops, searched_name)
  shops[:pets].delete(pet)
end

def add_pet_to_stock(shops, new_pet)
  shops[:pets].push(new_pet)
end

def customer_cash(customer)
  customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  customer[:pets].count()
end

def add_pet_to_customer(customer, pet)
  customer[:pets].push(pet)
end

def customer_can_afford_pet(customer, pet)
  if customer[:cash] >= pet[:price]
    return true
  else
    return false
  end
end

def pet_price(shops, pet)
  # i got errors when I tried to create a variable within this function - possibly because originally the variables had differet names? pet v searched_name?
  #appears I was over complicating things.
  #pet = find_pet_by_name(shops, pet)
  #find_pet_by_name(shops, pet)
  pet[:price]
end

def sell_pet_to_customer(shops, pet, customer)
  find_pet_by_name(@shops, pet)
  amount = pet_price(shops, pet)
  add_pet_to_customer(customer, pet)
  #feels like a cheat to hard code to 1?
  increase_pets_sold(shops, 1)
  remove_customer_cash(customer, amount)
  add_or_remove_cash(shops, amount)

end
