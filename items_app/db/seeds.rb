# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Rating.destroy_all
Item.destroy_all
Category.destroy_all
Modifier.destroy_all

5.times do
  Category.create(name: Faker::Commerce.department)
end
p "#{Category.count} category created"
10.times do
  item = Item.create(name: Faker::Commerce.product_name, price: Faker::Commerce.price, stock_quantity: rand(1..20), status: Faker::Boolean.boolean, category_id: Category.all.pluck(:id).sample)
  item.rating = Rating.new(rating: rand(1..5))
  # rating_id: Rating.all.pluck(:id).sample)
end
p "#{Item.count} Items created"

20.times do
  Modifier.create(
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    stock_quantity: rand(1..20),
  )
end

p "#{Modifier.count} modifier created"

10.times do
  ItemModifier.create(item_id: Item.ids.sample,
                      modifier_id: Modifier.ids.sample,
  )end

p "#{Rating.count} rating created"