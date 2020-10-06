# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    vegetables = Taxon.new
    vegetables.name = "Vegetables"
    vegetables.permalink = "products/vegetables"
    vegetables.save
    
    fruits = Taxon.new
    fruits.name = "Fruits"
    fruits.permalink = "products/fruits"
    fruits.save
    
    garlic_images = Image.new
    garlic_images.alt = "a garlic"
    garlic_images.thumb_url = "https://staging.openfoodfrance.org/spree/products/94/mini/OFF.png"
    garlic_images.small_url = "https://staging.openfoodfrance.org/spree/products/94/small/OFF.png"
    garlic_images.image_url = "https://staging.openfoodfrance.org/spree/products/94/product/OFF.png"
    garlic_images.large_url = "https://staging.openfoodfrance.org/spree/products/94/large/OFF.png"
    garlic_images.save

    potates_images = Image.new
    potates_images.alt = "a bunch of potates"
    potates_images.thumb_url = "https://staging.openfoodfrance.org/spree/products/94/mini/OFF.png"
    potates_images.small_url = "https://staging.openfoodfrance.org/spree/products/94/small/OFF.png"
    potates_images.image_url = "https://staging.openfoodfrance.org/spree/products/94/product/OFF.png"
    potates_images.large_url = "https://staging.openfoodfrance.org/spree/products/94/large/OFF.png"
    potates_images.save

    tomates_images = Image.new
    tomates_images.alt = "shinny tomates"
    tomates_images.thumb_url = "https://staging.openfoodfrance.org/spree/products/94/mini/OFF.png"
    tomates_images.small_url = "https://staging.openfoodfrance.org/spree/products/94/small/OFF.png"
    tomates_images.image_url = "https://staging.openfoodfrance.org/spree/products/94/product/OFF.png"
    tomates_images.large_url = "https://staging.openfoodfrance.org/spree/products/94/large/OFF.png"
    tomates_images.save

    garlic = Fruit.new
    garlic.name = "Garlic"
    garlic.permalink = "garlic"
    garlic.description = "Useful to scare vampires"
    garlic.price = "0.5"
    garlic.unit_value = 100
    garlic.unit_to_display = "100g"
    garlic.on_hand = 0
    garlic.taxon = vegetables
    garlic.image = garlic_images
    garlic.save!

    potatoes = Fruit.new
    potatoes.name = "Potatoes"
    potatoes.permalink = "potatoes"
    potatoes.description = "This potates are suitable for frying. Perfect for your tortillas de patatas"
    potatoes.price = "1.5"
    potatoes.unit_value = 1000
    potatoes.unit_to_display = "1kg"
    potatoes.on_hand = 04
    potatoes.taxon = vegetables
    potatoes.image = potates_images
    potatoes.save!

    tomatoes = Fruit.new
    tomatoes.name = "Tomatoes"
    tomatoes.permalink = "tomatoes"
    tomatoes.description = "Excelent choice for a fresh salad"
    tomatoes.price = "2.2"
    tomatoes.unit_value = 500
    tomatoes.unit_to_display = "500g"
    tomatoes.on_hand = 02
    tomatoes.taxon = fruits
    tomatoes.image = tomates_images
    tomatoes.save!
