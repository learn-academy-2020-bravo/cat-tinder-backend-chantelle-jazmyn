# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dogs = [
    {
        name:"Fiddlesticks",
        age: 4,
        enjoys: "chasing my tail"
    },
    {
        name:"Beevis",
        age: 5,
        enjoys: "chewing my toy"
    }
]

dogs.each do |attributes|
  Dog.create attributes
end
