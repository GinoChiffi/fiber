# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
Item.destroy_all
User.destroy_all
Brand.destroy_all
Subcategory.destroy_all
Category.destroy_all


users = [
  {
    email: 'max@gmail.com',
    password: '12345678',
    user_name: 'max',
    first_name: "Max",
    last_name:  "Bobbitt",
    address:  "Brussels",
    url_address: "not applicable",
    gender: "Male",
    birth_date: "01/01/1980",
    shoe_size: "43",
    top_size: "L",
    bottom_size: "40",
    search_radius: 3
  }
]

  users.each { |params| User.create!(params) }

brands = [
  {
    name: "Adidas"
  },
  {
    name: "Nike"
  },
  {
    name: "Gucci"
  },
]

brands.each { |params| Brand.create!(params) }



items = [
  {
    name: 'logo collared shirt',
    price:30,
    description: 'Classic shirt with logo on left breast',
    gender: 'Male',
    user: User.first,
    brand: Brand.all.sample
  }
]

items.each { |params| Item.create!(params) }


a = Category.create!(name: "Men's Tops")
Subcategory.create!(name: "Men's Shirts", category: a)
Subcategory.create!(name: "Men's T-shirts", category: a)
Subcategory.create!(name: "Men's Hoodies & Sweatshirts", category: a)
# T-shirts
# Hoodies & Sweatshirts
b = Category.create!(name: "Men's jackets")
Subcategory.create!(name: "Men's Denim & Sherpa Jackets", category: b)
Subcategory.create!(name: "Men's Bomber Jackets", category: b)
Subcategory.create!(name: 'Harrington & Coaches Jackets', category: b)
Subcategory.create!(name: 'Track Jackets', category: b)
Subcategory.create!(name: "Men's Windbreakers", category: b)
Subcategory.create!(name: "Men's Parkas", category: b)
Subcategory.create!(name: "Men's Hooded Coats", category: b)
Subcategory.create!(name: "Men's Coats", category: b)
# Jackets
# Denim & Sherpa Jackets
# Bomber Jackets
# Harrington & Coach Jackets
# Track Jackets
# Windbreakers
# Parkas
# Hooded Coats
# Coats
c = Category.create!(name: "Men's Bottoms")
Subcategory.create!(name: 'Jeans', category: c)
Subcategory.create!(name: 'Joggers', category: c)
Subcategory.create!(name: 'Shorts', category: c)
Subcategory.create!(name: 'Trousers', category: c)
# Bottoms
# Jeans
# Joggers
# Shorts
# Trousers
d = Category.create!(name: "Men's Shoes")
Subcategory.create!(name: 'Trainers', category: d)
Subcategory.create!(name: 'Boots', category: d)
Subcategory.create!(name: 'Casual', category: d)
# Shoes
# Trainers
# Boots
# Casual
# Formal
e = Category.create!(name: "Men's Underwear")
Subcategory.create!(name: 'Lounge', category: d)
Subcategory.create!(name: 'Socks', category: d)
Subcategory.create!(name: 'Underwear', category: d)
# Underwear
# Lounge
# Socks
# Underwear
f = Category.create!(name: "Men's Accessories")
Subcategory.create!(name: 'Bags', category: f)
Subcategory.create!(name: 'Wallets', category: f)
Subcategory.create!(name: 'Belts', category: f)
Subcategory.create!(name: 'Hats & Caps', category: f)
Subcategory.create!(name: 'Scarves & Gloves', category: f)
Subcategory.create!(name: 'Sunglasses', category: f)
# Accessories
# Bags
# Wallets
# Belts
# Hats & Caps
# Scarves & Gloves
# Sunglasses
g = Category.create!(name: "Men's Jewellery")
Subcategory.create!(name: 'Watches', category: g)
Subcategory.create!(name: 'Rings', category: g)
Subcategory.create!(name: 'Bracelets', category: g)
# Jewellery
# Watches
# Rings
# Bracelets
h = Category.create!(name: 'Dresses')
Subcategory.create!(name: 'Day Dresses', category: h)
Subcategory.create!(name: 'Party Dresses', category: h)
Subcategory.create!(name: 'Midi Dresses', category: h)
Subcategory.create!(name: 'Shift Dresses', category: h)
Subcategory.create!(name: 'Shirt Dresses', category: h)
Subcategory.create!(name: 'Skater Dresses', category: h)
Subcategory.create!(name: 'Pinafore & Dungaree', category: h)
Subcategory.create!(name: 'Maxi Dresses', category: h)
Subcategory.create!(name: 'Slip Dresses', category: h)
Subcategory.create!(name: 'Playsuits & Jumpsuits', category: h)
# Dresses
# Day Dresses
# Party Dresses
# Midi Dresses
# Shift Dresses
# Shirt Dresses
# Skater Dresses
# Pinafore & Dungaree
# Maxi Dresses
# Slip Dresses
# Playsuits & Jumpsuits
i = Category.create!(name: "Women's Tops")
Subcategory.create!(name: "Women's Shirts", category: i)
Subcategory.create!(name: 'Blouses', category: i)
Subcategory.create!(name: 'Camis', category: i)
Subcategory.create!(name: 'Tank Tops', category: i)
Subcategory.create!(name: "Women's T-shirts", category: i)
Subcategory.create!(name: "Women's Hoodies & Sweatshirts", category: i)
Subcategory.create!(name: 'Jumpers & Cardigans', category: i)
Subcategory.create!(name: 'Turtlenecks', category: i)
Subcategory.create!(name: 'Bodysuits', category: i)
# Tops
# Shirts
# Blouses
# Camis
# Tank tops
# T-shirts
# Hoodies & Sweatshirts
# Jumpers & Cardigans
# Turtleneck tops
# Bodysuits
j = Category.create!(name: "Women's Jackets")
Subcategory.create!(name: 'Coats', category: j)
Subcategory.create!(name: "Women's Bomber Jackets", category: j)
Subcategory.create!(name: "Women's Denim Jackets", category: j)
Subcategory.create!(name: 'Leather & Suede Jackets', category: j)
Subcategory.create!(name: " Women's Parkas & Trenches", category: j)
Subcategory.create!(name: 'Puffer Jackets', category: j)
Subcategory.create!(name: 'Windbreakers & Anoraks', category: j)
Subcategory.create!(name: 'Faux-fur Jackets', category: j)
Subcategory.create!(name: "Women's Hooded Coats", category:j)
# Jackets
# Coats
# Bomber Jackets
# Denim Jackets
# Leather & Suede Jackets
# Parkas & Trenches
# Puffer Jackets
# Windbreakers & Anoraks
# Faux-fur Jackets
# Hooded Coats
k = Category.create!(name: "Women's Bottoms")
Subcategory.create!(name: 'Jeans', category: k)
Subcategory.create!(name: 'Skirts', category: k)
Subcategory.create!(name: 'Trousers', category: k)
Subcategory.create!(name: 'Shorts', category: k)
Subcategory.create!(name: 'Dungarees', category: k)
# Bottoms
# Jeans
# Skirts
# Trousers
# Shorts
# Dungarees
l = Category.create!(name: 'Lingerie')
Subcategory.create!(name: 'Bras & Bracelets', category: l)
Subcategory.create!(name: 'Knickers', category: l)
Subcategory.create!(name: 'Lingerie Sets', category: l)
Subcategory.create!(name: 'Nightwear & Slips', category: l)
Subcategory.create!(name: 'Tights & Socks', category: l)
Subcategory.create!(name: 'Bodysuits', category: l)
Subcategory.create!(name: 'Loungewear', category: l)
# Lingerie

# Bras & Bralettes
# Knickers
# Lingerie Sets
# Nightwear & Slips
# Tights & Socks
# Bodysuits
# Loungewear
m = Category.create!(name: "Women's Swimsuits")
Subcategory.create!(name: 'Bikini Tops', category: m)
Subcategory.create!(name: 'Bikini Bottoms', category: m)
Subcategory.create!(name: 'Bikini Sets', category: m)
Subcategory.create!(name: 'Swimsuits', category: m)
Subcategory.create!(name: 'Beachwear', category: m)
# Swimsuits

# Bikini Tops
# Bikini Bottoms
# Bikini Sets
# Swimsuits
# Beachwear
n = Category.create!(name: "Women's Accessories")
Subcategory.create!(name: 'Bags & Purses', category: n)
Subcategory.create!(name: 'Hair Accessories', category: n)
Subcategory.create!(name: 'Hats', category: n)
Subcategory.create!(name: 'Scarves & Gloves', category: n)
Subcategory.create!(name: 'Belts', category: n)
Subcategory.create!(name: 'Sunglasses', category: n)
# Accessories

# Bags & Purses
# Hair Accessories
# Hats
# Scarves & Gloves
# Belts
# Sunglasses
o = Category.create!(name: "Women's Jewellery")
Subcategory.create!(name: 'Watches', category: o)
Subcategory.create!(name: 'Body Jewellery', category: o)
Subcategory.create!(name: 'Bracelets', category: o)
Subcategory.create!(name: 'Chokers', category: o)
Subcategory.create!(name: 'Earrings', category: o)
Subcategory.create!(name: 'Necklaces', category: o)
Subcategory.create!(name: 'Rings', category: o)
# Jewellery

# Watches
# Body Jewellery
# Bracelets
# Chokers
# Earrings
# Necklaces
# Rings
p = Category.create!(name: "Women's Shoes")
Subcategory.create!(name: 'Trainers', category: p)
Subcategory.create!(name: 'Boots', category: p)
Subcategory.create!(name: 'Flat Shoes', category: p)
Subcategory.create!(name: 'Heels & Wedges', category: p)
Subcategory.create!(name: 'Sandals & Pool Sliders', category: p)
# Shoes

# Trainers
# Boots
# Flat Shoes
# Heels & Wedges
# Sandals & Pool Sliders
