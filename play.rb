
    @customers = [
      {
        name: "Alice",
        pets: [],
        cash: 1000
      },
      {
        name: "Bob",
        pets: [],
        cash: 50
      }
    ]

    @new_pet = {
      name: "Bors the Younger",
      pet_type: :cat,
      breed: "Cornish Rex",
      price: 100
    }

    @pet_shop = {
      pets: [
        {
          name: "Sir Percy",
          pet_type: :cat,
          breed: "British Shorthair",
          price: 500
        },
        {
          name: "King Bagdemagus",
          pet_type: :cat,
          breed: "British Shorthair",
          price: 500
        },
        {
          name: "Sir Lancelot",
          pet_type: :dog,
          breed: "Pomsky",
          price: 1000,
        },
        {
          name: "Arthur",
          pet_type: :dog,
          breed: "Husky",
          price: 900,
        },
        {
          name: "Tristan",
          pet_type: :dog,
          breed: "Basset Hound",
          price: 800,
        },
        {
          name: "Merlin",
          pet_type: :cat,
          breed: "Egyptian Mau",
          price: 1500,
        }
      ],
      admin: {
        total_cash: 1000,
        pets_sold: 0,
      },
      name: "Camelot of Pets"
    }


    # for pet in @pet_shop[:pets]
    #   p pet
    #   p ""
    # end

    # p @pet_shop[:pets][0]
    # def pets_by_breed(shops, searched_breed)
    #   pets_of_breed = []
    #   for pet in shops[:pets]
    #     if pet[:breed] == searched_breed
    #       pets_of_breed.push(pet)
    #     end
    #   end
    #   return pets_of_breed
    #end

    # p pets_by_breed(@pet_shop, "British Shorthair")

    # def find_pet_by_name(shops, searched_name)
    #   pet_searched = []
    #   for pet in shops[:pets]
    #     if pet[:name] == searched_name
    #       pet_searched.push(pet)
    #     end
    #   end
    #   return pet_searched
    # end

  #   def find_pet_by_name(shops, searched_name)
  #     #search_result = {}
  #     for pet in shops[:pets]
  #       if pet[:name] == searched_name
  #         #add the pet to the hash search_result
  #         #search_result = {pet}
  #         # search_result << (pet)
  #         return pet
  #       end
  #     end
  #   end
  #
  # p find_pet_by_name(@pet_shop, "Arthur")

  # def find_pet_by_name(shops, searched_name)
  #   #search_result = {}
  #   for pet in shops[:pets]
  #     if pet[:name] == searched_name
  #       return pet
  #     end
  #   end
  #   return nil
  # end
  #
  # p find_pet_by_name(@pet_shop, "Sir Percy")


  # def add_pet_to_stock(shops, new_pet)
  #   shops[:pets].push(new_pet)
  # end
  #
  # add_pet_to_stock(@pet_shop, @new_pet)
  # for pet in @pet_shop[:pets]
  #   p pet
  #   p ""
  # end


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
    pet = find_pet_by_name(shops, pet)
    pet[:price]
  end


  def sell_pet_to_customer(shops, pet, customer)
    amount = pet_price(shops, pet)
    add_pet_to_customer(customer, pet)
    #shops[:admin][:pets_sold] += 1
    increase_pets_sold(shops, 1)
    #find the pet and then get the price, take that as a variable and pass it forward to change amounts
    remove_customer_cash(customer, amount)
    add_or_remove_cash(shops, amount)
    #remove_pet_by_name(shops, pet)
    # add pet name to customer's pet name array
    #amount =

    #amount = pet[:price]
    #remove_customer_cash(customer, amount)
    # customer_pet_count(customer)
    # pets_sold(shops)
    # customer_cash(customer)
    # total_cash(shops)
  end

  sell_pet_to_customer(@pet_shop, "Arthur", @customers[0])

  p customer_pet_count(@customers[0])
  p pets_sold(@pet_shop)
  p customer_cash(@customers[0])
  p total_cash(@pet_shop)
  p find_pet_by_name(@pet_shop, "Arthur")[:price]
