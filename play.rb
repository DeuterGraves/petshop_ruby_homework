
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
    def pets_by_breed(shops, searched_breed)
      pets_of_breed = []
      for pet in shops[:pets]
        if pet[:breed] == searched_breed
          pets_of_breed.push(pet)
        end
      end
      return pets_of_breed
    end

    p pets_by_breed(@pet_shop, "British Shorthair")

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

  def find_pet_by_name(shops, searched_name)
    search_result = {}
    for pet in shops[:pets]
      if pet[:name] == searched_name
        return pet
      end
    end
    return nil
  end

  p find_pet_by_name(@pet_shop, "Sir Percy")
