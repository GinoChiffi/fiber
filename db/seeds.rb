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
Shop.destroy_all

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
  },
  {
    email: 'devis.o@hotmail.com',
    password: 'fishfish',
    user_name: 'fish',
    first_name: "Olivier",
    last_name:  "Devis",
    address:  "Brussels",
    url_address: "not applicable",
    gender: "Male",
    birth_date: "01/01/1980",
    shoe_size: "43",
    top_size: "L",
    bottom_size: "40",
    search_radius: 3
  },
    {
    email: 'anne@collet.com',
    password: 'annecollet',
    user_name: 'AnneCollet',
    first_name: "Anne",
    last_name:  "Collet",
    address:  "Brussels",
    url_address: "not applicable",
    gender: "Female",
    birth_date: "01/01/1980",
    shoe_size: "40",
    top_size: "M",
    bottom_size: "30",
    dress_size: "40",
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
   {
    name: "Armani"
  },
  {
    name: "Supreme"
  },
  {
    name: "Patta"
  }
]

brands.each { |params| Brand.create!(params) }


# items.each { |params| Item.create!(params) }

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








a = Category.create!(name: "Tops")
Subcategory.create!(name: "Shirts", category: a)
Subcategory.create!(name: "T-shirts", category: a)
Subcategory.create!(name: "Hoodies & Sweatshirts", category: a)
Subcategory.create!(name: 'Blouses', category: a)
Subcategory.create!(name: 'Camis', category: a)
Subcategory.create!(name: 'Tank Tops', category: a)
Subcategory.create!(name: 'Jumpers & Cardigans', category: a)
Subcategory.create!(name: 'Turtlenecks', category: a)

axsmall = Size.create!(value: 'XS', category: a)
asmall = Size.create!(value: 'S', category: a)
amedium = Size.create!(value: 'M', category: a)
alarge = Size.create!(value: 'L', category: a)
aextralarge = Size.create!(value: 'XL', category: a)



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

bxsmall = Size.create!(value: 'XS', category: b)
bsmall = Size.create!(value: 'S', category: b)
bmedium = Size.create!(value: 'M', category: b)
blarge = Size.create!(value: 'L', category: b)
bextralarge = Size.create!(value: 'XL', category: b)


c = Category.create!(name: "Bottoms")
Subcategory.create!(name: 'Dungarees', category: c)
Subcategory.create!(name: 'Jeans', category: c)
Subcategory.create!(name: 'Joggers', category: c)
Subcategory.create!(name: 'Shorts', category: c)
Subcategory.create!(name: 'Skirts', category: c)
Subcategory.create!(name: 'Trousers', category: c)

c30 = Size.create!(value: '30', category: c)
c32 = Size.create!(value: '32', category: c)
c34 = Size.create!(value: '34', category: c)
c36 = Size.create!(value: '36', category: c)
c38 = Size.create!(value: "38", category: c)
c40 = Size.create!(value: '40', category: c)
c42 = Size.create!(value: '42', category: c)
c44 = Size.create!(value: '44', category: c)
c46 = Size.create!(value: '46', category: c)
c48 = Size.create!(value: "48", category: c)
c50 = Size.create!(value: "50", category: c)

d = Category.create!(name: "Shoes")
Subcategory.create!(name: 'Boots', category: d)
Subcategory.create!(name: 'Casual', category: d)
Subcategory.create!(name: 'Flat Shoes', category: d)
Subcategory.create!(name: 'Formal', category: d)
Subcategory.create!(name: 'Heels & Wedges', category: d)
Subcategory.create!(name: 'Sandals & Pool Sliders', category: d)
Subcategory.create!(name: 'Trainers', category: d)

d35 = Size.create!(value: '35', category: d)
d36 = Size.create!(value: '36', category: d)
d37 = Size.create!(value: '37', category: d)
d38 = Size.create!(value: '38', category: d)
d39 = Size.create!(value: "39", category: d)
d40 = Size.create!(value: '40', category: d)
d41 = Size.create!(value: '41', category: d)
d42 = Size.create!(value: '42', category: d)
d43 = Size.create!(value: '43', category: d)
d44 = Size.create!(value: "44", category: d)
d45 = Size.create!(value: "45", category: d)
d46 = Size.create!(value: '46', category: d)
d47 = Size.create!(value: '47', category: d)
d48 = Size.create!(value: '48', category: d)
d49 = Size.create!(value: '49', category: d)
d50 = Size.create!(value: '50', category: d)


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

exsmall = Size.create!(value: 'XS', category: e)
esmall = Size.create!(value: 'S', category: e)
emedium = Size.create!(value: 'M', category: e)
elarge = Size.create!(value: 'L', category: e)
eextralarge = Size.create!(value: 'XL', category: e)

f = Category.create!(name: "Accessories")
Subcategory.create!(name: 'Bags & Purses', category: f)
Subcategory.create!(name: 'Belts', category: f)
Subcategory.create!(name: 'Hair Accessories', category: f)
Subcategory.create!(name: 'Hats & Caps', category: f)
Subcategory.create!(name: 'Scarves & Gloves', category: f)
Subcategory.create!(name: 'Sunglasses', category: f)
Subcategory.create!(name: 'Wallets', category: f)

fxsmall = Size.create!(value: 'XS', category: f)
fsmall = Size.create!(value: 'S', category: f)
fmedium = Size.create!(value: 'M', category: f)
flarge = Size.create!(value: 'L', category: f)
fextralarge = Size.create!(value: 'XL', category: f)
fonesize = Size.create!(value: "onesize", category: f)

g = Category.create!(name: "Jewellery")
Subcategory.create!(name: 'Body Jewellery', category: g)
Subcategory.create!(name: 'Bracelets', category: g)
Subcategory.create!(name: 'Chokers', category: g)
Subcategory.create!(name: 'Earrings', category: g)
Subcategory.create!(name: 'Necklaces', category: g)
Subcategory.create!(name: 'Rings', category: g)
Subcategory.create!(name: 'Watches', category: g)

gxsmall = Size.create!(value: 'XS', category: g)
gsmall = Size.create!(value: 'S', category: g)
gmedium = Size.create!(value: 'M', category: g)
glarge = Size.create!(value: 'L', category: g)
gextralarge = Size.create!(value: 'XL', category: g)
gonesize = Size.create!(value: "onesize", category: g)

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

h30 = Size.create!(value: '30', category: h)
h32 = Size.create!(value: '32', category: h)
h34 = Size.create!(value: '34', category: h)
h36 = Size.create!(value: '36', category: h)
h38 = Size.create!(value: "38", category: h)
h40 = Size.create!(value: '40', category: h)
h42 = Size.create!(value: '42', category: h)
h44 = Size.create!(value: '44', category: h)
h46 = Size.create!(value: '46', category: h)
h48 = Size.create!(value: "48", category: h)
h50 = Size.create!(value: "50", category: h)

i = Category.create!(name: "Swimsuits")
Subcategory.create!(name: 'Bikini Tops', category: i)
Subcategory.create!(name: 'Bikini Bottoms', category: i)
Subcategory.create!(name: 'Bikini Sets', category: i)
Subcategory.create!(name: 'Swimsuits', category: i)
Subcategory.create!(name: 'Beachwear', category: i)
Subcategory.create!(name: 'Swimming trunk', category: i)
Subcategory.create!(name: 'Speedo', category: i)

ixsmall = Size.create!(value: 'XS', category: i)
ismall = Size.create!(value: 'S', category: i)
imedium = Size.create!(value: 'M', category: i)
ilarge = Size.create!(value: 'L', category: i)
iextralarge = Size.create!(value: 'XL', category: i)
ionesize = Size.create!(value: "onesize", category: i)


Shop.create!(name: "Urban Outfitters", city: "Antwerp")
Shop.create!(name: "Marks & Spencer", city: "Brussels")
Shop.create!(name: "Vier", city: "Ghent")
Shop.create!(name: "J Crew", city: "Antwerp")
Shop.create!(name: "Claire's", city: "Brussels")
Shop.create!(name: "Madewell", city: "Ghent")
Shop.create!(name: "Footlocker", city: "Antwerp")
Shop.create!(name: "C&A", city: "Brussels")
Shop.create!(name: "Macy's", city: "Ghent")
Shop.create!(name: "Aeropostale", city: "Antwerp")

j = Category.create!(name: "Age")
Subcategory.create!(name: "Infants & Toddlers", category: j)
Subcategory.create!(name: "Youth", category: j)
Subcategory.create!(name: "Adults", category: j)


items = [
  {
    name: 'Shirt',
    price: 20,
    description: 'Thermal shirt',
    gender: 'Male',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1480674094/ThermalShirt_dojkrm.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Bra',
    price: 30,
    description: 'Triangle bra',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1480674094/trianglebra_s7rvfl.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Watch',
    price: 50,
    description: 'Vintage gold watch',
    gender: 'Male',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1480674094/CasioWatch_mydzhc.jpg",
    shop_id: Shop.all.sample.id
    },
   {
    name: 'Jacket',
    price: 90,
    description: "Bomber jacket",
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1480674094/BomberJacket_bhybsu.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Midi',
    price: 60,
    description: 'Mesh dress',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1480674094/MidiDress_j3wihq.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Jeans',
    price: 70,
    description: 'Skinny hipster jeans',
    gender: 'Male',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1480674094/SkinnyJeans_cpm7fr.jpg",
    shop_id: Shop.all.sample.id
    },
   {
    name: 'Trainers',
    price: 85,
    description: 'Vintage Reebok sneakers',
    gender: 'Male',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1480674094/BlackTrainers_cvmbae.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'T Shirt',
    price: 15,
    description: "Classic T-shirt",
    gender: 'Male',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1480674094/TShirt_djsk8r.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Scarf',
    price: 30,
    description: 'Wool scarf',
    gender: 'Male',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1480674094/Scarf_vghlmk.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Heels',
    price: 150,
    description: 'Strappy heels',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1480674094/heels_cwyq2f.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Jumper',
    price: 30,
    description: 'metallic shirt',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1481803331/metallicjumper_ankh3x.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Turtleneck',
    price: 70,
    description: 'Striped turtleneck',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1481803320/stripedturtleneck_fojfch.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Shirt',
    price: 50,
    description: 'Ribbed shirt',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1481803318/ribbedshirt_dc2jiq.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Skirt',
    price: 40,
    description: 'Pencil skirt',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1481803315/pencilskirt_wiberx.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Sneakers',
    price: 75,
    description: 'Knit sneakers',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1481803313/flyknits_k9v6ks.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Runners',
    price: 90,
    description: 'Running shoes',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1481803311/asics_iohlvi.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Jacket',
    price: 120,
    description: 'Jeans jacket',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1481803308/jeansjacket_gvikt7.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Trousers',
    price: 65,
    description: 'cargo trousers',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1481803204/greencargos_g40lxm.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Joggers',
    price: 80,
    description: 'Jogging shoes',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1481803187/nikeroshe_ajvekv.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Sweatshirt',
    price: 90,
    description: 'Bright sweatshirt',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1481803184/yellowsweat_nvcuv5.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Sequin Dress',
    price: 60,
    description: 'Red sequined dress',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1481814807/reddress_d6ihsi.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Shiny Dress',
    price: 70,
    description: 'Green shiny dress',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1481814810/greendress_x0oq3k.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Sleeved Dress',
    price: 85,
    description: 'Red sleeved dress',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1481814812/reddress2_wc7ufr.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Flower Dress',
    price: 77,
    description: 'Black dress with flowers',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1481814815/blackdressflowers_r6al8c.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Plaid Dress',
    price: 90,
    description: 'Blue plaid dress',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1481814817/bluedressplaid_pnrzvf.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Slouch Dress',
    price: 95,
    description: 'Gold slinky dress',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1481814823/golddress_ofzpcb.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Relaxed Dress',
    price: 65,
    description: 'Shiny light blue dress',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1481814826/lightbluedress_xw4lkd.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Slip Dress',
    price: 75,
    description: 'Silver slip dress',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1481814829/silverslipdress_yatcnq.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Full Length Dress',
    price: 55,
    description: 'Black checked dress',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1481814832/blackdresschecks_pwfybh.jpg",
    shop_id: Shop.all.sample.id
  },
   {
    name: 'Midi Dress',
    price: 60,
    description: 'Yellow midi dress',
    gender: 'Female',
    brand: Brand.all.sample,
    tumbnail_img: "http://res.cloudinary.com/sggw/image/upload/v1481814834/yellowdresssmile_b8zrbv.jpg",
    shop_id: Shop.all.sample.id
  }
]

items.each { |params| Item.create!(params) }


# Item.all.each do |item|
#   ItemColor.create!(color: Color.all.sample, item: item)
#   category = Category.all.sample
#   subcategory = category.subcategories.sample
#   size = category.sizes.sample
#   ItemSubcategory.create(item: item, subcategory: subcategory)
#   ItemSize.create!(size: size, item: item)
#   item.update(shop_id: Shop.all.sample.id)
# end

ItemColor.create!(color_id: 5, item_id: 1)
ItemColor.create!(color_id: 5, item_id: 2)
ItemColor.create!(color_id: 10, item_id: 3)
ItemColor.create!(color_id: 9, item_id: 4)
ItemColor.create!(color_id: 9, item_id: 5)
ItemColor.create!(color_id: 9, item_id: 6)
ItemColor.create!(color_id: 9, item_id: 7)
ItemColor.create!(color_id: 4, item_id: 8)
ItemColor.create!(color_id: 3, item_id: 9)
ItemColor.create!(color_id: 9, item_id: 10)
ItemColor.create!(color_id: 11, item_id: 11)
ItemColor.create!(color_id: 9, item_id: 12)
ItemColor.create!(color_id: 9, item_id: 13)
ItemColor.create!(color_id: 9, item_id: 14)
ItemColor.create!(color_id: 3, item_id: 15)
ItemColor.create!(color_id: 5, item_id: 16)
ItemColor.create!(color_id: 5, item_id: 17)
ItemColor.create!(color_id: 4, item_id: 18)
ItemColor.create!(color_id: 4, item_id: 19)
ItemColor.create!(color_id: 3, item_id: 20)
ItemColor.create!(color_id: 1, item_id: 21)
ItemColor.create!(color_id: 4, item_id: 22)
ItemColor.create!(color_id: 1, item_id: 23)
ItemColor.create!(color_id: 9, item_id: 24)
ItemColor.create!(color_id: 5, item_id: 25)
ItemColor.create!(color_id: 10, item_id: 26)
ItemColor.create!(color_id: 5, item_id: 27)
ItemColor.create!(color_id: 11, item_id: 28)
ItemColor.create!(color_id: 9, item_id: 29)
ItemColor.create!(color_id: 3, item_id: 30)


ItemSubcategory.create!(item_id: 1, subcategory_id: 1)
ItemSubcategory.create!(item_id: 2, subcategory_id: 34)
ItemSubcategory.create!(item_id: 3, subcategory_id: 55)
ItemSubcategory.create!(item_id: 4, subcategory_id: 9)
ItemSubcategory.create!(item_id: 5, subcategory_id: 58)
ItemSubcategory.create!(item_id: 6, subcategory_id: 21)
ItemSubcategory.create!(item_id: 7, subcategory_id: 32)
ItemSubcategory.create!(item_id: 8, subcategory_id: 2)
ItemSubcategory.create!(item_id: 9, subcategory_id: 46)
ItemSubcategory.create!(item_id: 10, subcategory_id: 30)
ItemSubcategory.create!(item_id: 11, subcategory_id: 1)
ItemSubcategory.create!(item_id: 12, subcategory_id: 8)
ItemSubcategory.create!(item_id: 13, subcategory_id: 1)
ItemSubcategory.create!(item_id: 14, subcategory_id: 24)
ItemSubcategory.create!(item_id: 15, subcategory_id: 32)
ItemSubcategory.create!(item_id: 16, subcategory_id: 32)
ItemSubcategory.create!(item_id: 17, subcategory_id: 11)
ItemSubcategory.create!(item_id: 18, subcategory_id: 25)
ItemSubcategory.create!(item_id: 19, subcategory_id: 32)
ItemSubcategory.create!(item_id: 20, subcategory_id: 7)
ItemSubcategory.create!(item_id: 21, subcategory_id: 57)
ItemSubcategory.create!(item_id: 22, subcategory_id: 57)
ItemSubcategory.create!(item_id: 23, subcategory_id: 57)
ItemSubcategory.create!(item_id: 24, subcategory_id: 56)
ItemSubcategory.create!(item_id: 25, subcategory_id: 60)
ItemSubcategory.create!(item_id: 26, subcategory_id: 57)
ItemSubcategory.create!(item_id: 27, subcategory_id: 64)
ItemSubcategory.create!(item_id: 28, subcategory_id: 64)
ItemSubcategory.create!(item_id: 29, subcategory_id: 61)
ItemSubcategory.create!(item_id: 30, subcategory_id: 56)

ItemSize.create!(item_id: 1, size_id: 3)
ItemSize.create!(item_id: 2, size_id: 40)
ItemSize.create!(item_id: 3, size_id: 54)
ItemSize.create!(item_id: 4, size_id: 10)
ItemSize.create!(item_id: 5, size_id: 60)
ItemSize.create!(item_id: 6, size_id: 15)
ItemSize.create!(item_id: 7, size_id: 29)
ItemSize.create!(item_id: 8, size_id: 3)
ItemSize.create!(item_id: 9, size_id: 48)
ItemSize.create!(item_id: 10, size_id: 27)
ItemSize.create!(item_id: 11, size_id: 3)
ItemSize.create!(item_id: 12, size_id: 3)
ItemSize.create!(item_id: 13, size_id: 3)
ItemSize.create!(item_id: 14, size_id: 13)
ItemSize.create!(item_id: 15, size_id: 29)
ItemSize.create!(item_id: 16, size_id: 29)
ItemSize.create!(item_id: 17, size_id: 9)
ItemSize.create!(item_id: 18, size_id: 13)
ItemSize.create!(item_id: 19, size_id: 29)
ItemSize.create!(item_id: 20, size_id: 3)
ItemSize.create!(item_id: 21, size_id: 60)
ItemSize.create!(item_id: 22, size_id: 60)
ItemSize.create!(item_id: 23, size_id: 60)
ItemSize.create!(item_id: 24, size_id: 60)
ItemSize.create!(item_id: 25, size_id: 60)
ItemSize.create!(item_id: 26, size_id: 60)
ItemSize.create!(item_id: 27, size_id: 60)
ItemSize.create!(item_id: 28, size_id: 60)
ItemSize.create!(item_id: 29, size_id: 60)
ItemSize.create!(item_id: 30, size_id: 60)
