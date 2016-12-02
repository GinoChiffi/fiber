# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
ItemSubcategory.destroy_all
Subcategory.destroy_all
Category.destroy_all
ItemColor.destroy_all
Color.destroy_all
ItemSize.destroy_all
Size.destroy_all
Item.destroy_all
User.destroy_all
Brand.destroy_all



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
    name: 'Thermal Shirt',
    price: 20,
    description: 'Classic thermal shirt with button collar',
    gender: 'Male',
    user: User.first,
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1480674094/ThermalShirt_dojkrm.jpg"
  },
   {
    name: 'Triangle Bra',
    price: 30,
    description: 'half mesh triangle shaped brassiere',
    gender: 'Female',
    user: User.first,
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1480674094/trianglebra_s7rvfl.jpg"
  },
   {
    name: 'Casio Watch',
    price: 50,
    description: 'Vintage gold Casio digital watch',
    gender: 'Male',
    user: User.first,
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1480674094/CasioWatch_mydzhc.jpg"
  },
   {
    name: 'Bomber Jacket',
    price: 90,
    description: "Black Women's bomber jacket",
    gender: 'Female',
    user: User.first,
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1480674094/BomberJacket_bhybsu.jpg"
  },
   {
    name: 'Mesh Midi Dress',
    price: 60,
    description: 'Black mesh midi dress, grrrrrr',
    gender: 'Female',
    user: User.first,
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1480674094/MidiDress_j3wihq.jpg"
  },
   {
    name: 'Skinny hipster jeans',
    price: 70,
    description: 'Super skinny black hipster jeans. Be like everyone else!',
    gender: 'Male',
    user: User.first,
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1480674094/SkinnyJeans_cpm7fr.jpg"
  },
   {
    name: 'Reebok trainers',
    price: 85,
    description: 'black vintage Reebok sneakers',
    gender: 'Male',
    user: User.first,
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1480674094/BlackTrainers_cvmbae.jpg"
  },
   {
    name: 'T Shirt',
    price: 15,
    description: "Classic olive T-shirt. A staple of everyone's wardrobe",
    gender: 'Male',
    user: User.first,
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1480674094/TShirt_djsk8r.jpg"
  },
   {
    name: 'Scarf',
    price: 30,
    description: 'Yellow wool scarf with large check pattern',
    gender: 'Male',
    user: User.first,
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1480674094/Scarf_vghlmk.jpg"
  },
   {
    name: 'Strappy heels',
    price: 150,
    description: 'Super sexy high heels with straps',
    gender: 'Female',
    user: User.first,
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1480674094/heels_cwyq2f.jpg"
  }
]

items.each { |params| Item.create!(params) }

red = Color.create!(name: 'red')
orange = Color.create!(name: 'orange')
yellow = Color.create!(name: 'yellow')
green = Color.create!(name: 'green')
blue = Color.create!(name: 'blue')
indigo = Color.create!(name: 'indigo')
violet = Color.create!(name: 'violet')
white = Color.create!(name: 'white')
black = Color.create!(name: 'black')
gold = Color.create!(name: 'gold')
silver = Color.create!(name: 'silver')


# looping through each existing item and linking it to 1 colour & 1 size


# items.each { |params| Item.create!(params) }



a = Category.create!(name: "Tops")
Subcategory.create!(name: "Shirts", category: a)
Subcategory.create!(name: "T-shirts", category: a)
Subcategory.create!(name: "Hoodies & Sweatshirts", category: a)
Subcategory.create!(name: 'Blouses', category: a)
Subcategory.create!(name: 'Camis', category: a)
Subcategory.create!(name: 'Tank Tops', category: a)
Subcategory.create!(name: 'Jumpers & Cardigans', category: a)
Subcategory.create!(name: 'Turtlenecks', category: a)

asmall = Size.create!(selection: 'small', category: a)
amedium = Size.create!(selection: 'medium', category: a)
alarge = Size.create!(selection: 'large', category: a)
aextralarge = Size.create!(selection: 'extralarge', category: a)
aonesize = Size.create!(selection: "onesize", category: a)


b = Category.create!(name: "Jackets")
Subcategory.create!(name: "Bomber Jackets", category: b)
Subcategory.create!(name: "Coats", category: b)
Subcategory.create!(name: "Denim & Sherpa Jackets", category: b)
Subcategory.create!(name: 'Faux-fur Jackets', category: b)
Subcategory.create!(name: 'Harrington & Coaches Jackets', category: b)
Subcategory.create!(name: "Hooded Coats", category: b)
Subcategory.create!(name: 'Leather & Suede Jackets', category: b)
Subcategory.create!(name: "Parkas & Trenches", category: b)
Subcategory.create!(name: 'Puffer Jackets', category: b)
Subcategory.create!(name: 'Track Jackets', category: b)
Subcategory.create!(name: 'Windbreakers & Anoraks', category: b)


c = Category.create!(name: "Bottoms")
Subcategory.create!(name: 'Dungarees', category: c)
Subcategory.create!(name: 'Jeans', category: c)
Subcategory.create!(name: 'Joggers', category: c)
Subcategory.create!(name: 'Shorts', category: c)
Subcategory.create!(name: 'Skirts', category: c)
Subcategory.create!(name: 'Trousers', category: c)

d = Category.create!(name: "Shoes")
Subcategory.create!(name: 'Boots', category: d)
Subcategory.create!(name: 'Casual', category: d)
Subcategory.create!(name: 'Flat Shoes', category: d)
Subcategory.create!(name: 'Formal', category: d)
Subcategory.create!(name: 'Heels & Wedges', category: d)
Subcategory.create!(name: 'Sandals & Pool Sliders', category: d)
Subcategory.create!(name: 'Trainers', category: d)

e = Category.create!(name: "Underwear")
Subcategory.create!(name: 'Bodysuits', category: e)
Subcategory.create!(name: 'Bras & Bralettes', category: e)
Subcategory.create!(name: 'Knickers', category: e)
Subcategory.create!(name: 'Lingerie Sets', category: e)
Subcategory.create!(name: 'Lounge', category: e)
Subcategory.create!(name: 'Nightwear & Slips', category: e)
Subcategory.create!(name: 'Socks', category: e)
Subcategory.create!(name: 'Tights & Socks', category: e)
Subcategory.create!(name: 'Underwear', category: e)

f = Category.create!(name: "Accessories")
Subcategory.create!(name: 'Bags & Purses', category: f)
Subcategory.create!(name: 'Belts', category: f)
Subcategory.create!(name: 'Hair Accessories', category: f)
Subcategory.create!(name: 'Hats & Caps', category: f)
Subcategory.create!(name: 'Scarves & Gloves', category: f)
Subcategory.create!(name: 'Sunglasses', category: f)
Subcategory.create!(name: 'Wallets', category: f)

g = Category.create!(name: "Jewellery")
Subcategory.create!(name: 'Body Jewellery', category: g)
Subcategory.create!(name: 'Bracelets', category: g)
Subcategory.create!(name: 'Chokers', category: g)
Subcategory.create!(name: 'Earrings', category: g)
Subcategory.create!(name: 'Necklaces', category: g)
Subcategory.create!(name: 'Rings', category: g)
Subcategory.create!(name: 'Watches', category: g)

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

i = Category.create!(name: "Swimsuits")
Subcategory.create!(name: 'Bikini Tops', category: i)
Subcategory.create!(name: 'Bikini Bottoms', category: i)
Subcategory.create!(name: 'Bikini Sets', category: i)
Subcategory.create!(name: 'Swimsuits', category: i)
Subcategory.create!(name: 'Beachwear', category: i)

Item.all.each do |item|
  ItemColor.create!(color: blue, item: item)
  category = Category.first
  subcategory = category.subcategories.sample
  size = category.sizes.sample
  ItemSubcategory.create(item: item, subcategory: subcategory)
  ItemSize.create!(size: size, item: item)
end
