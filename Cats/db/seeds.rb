# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  c1 = Cat.create!(name: "Hobbes", color: "tabby", description: "A cat", sex: "M", birth_date: "2015/5/14")
  c2 = Cat.create!(name: "Spot", color: "white", description: "Another cat", sex: "F", birth_date: "2011/1/12")
end
