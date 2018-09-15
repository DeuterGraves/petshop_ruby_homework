def pet_shop_name (shop)
  shop[:name]
end

def total_cash(shop)
  shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
  shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, new_sales)
  shop[:admin][:pets_sold] += new_sales
end

def stock_count(shop)
  shop[:pets].length
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

def remove_pet_by_name(shops, searched_name)

  for pet in shops[:pets]
    if pet[:name] == searched_name
      shops[:pets].delete(pet)
    end
  end

end
