require 'csv'

class ItemImporter
  def import(content)
    CSV.foreach(File.join(Rails.root, "fiber.csv"), headers: true) do |line|
      color_name = line["colors"].split(" ").first
      color = Color.find_or_create_by(name: color_name)

      brand = Brand.find_or_create_by(name: line["brand-name"])
      category = Category.find_or_create_by(name: line["category"])
      subcategory = Subcategory.find_or_create_by(name: line["sub-category"], category: category)

      p line["sizes"].split("\n")
      sizes = line["sizes"].split("\n").map { |sn| Size.find_or_create_by(value: sn, category: category) } 
      
      item = Item.create(
        name: line["product-name"], 
        price: line["product-price"],
        description: line["product-description"],
        gender: line["gender"],
        brand: brand,
        shop: Shop.last,
        tumbnail_img: line["product-detail1"].split("?").first
      )

      sizes.each { |size| ItemSize.create(item: item, size: size) }
      ItemColor.create(item: item, color: color)
      ItemSubcategory.create(item: item, subcategory: subcategory)
    end
  end
end
