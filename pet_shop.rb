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
