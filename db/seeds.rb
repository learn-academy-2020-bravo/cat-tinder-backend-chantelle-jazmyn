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
        enjoys: "chasing my tail",
        img: "https://www.sheknows.com/wp-content/uploads/2018/08/Chihuahua-driving_wl3lan.jpeg"
    },
    {
        name:"Beevis",
        age: 5,
        enjoys: "chewing my toy",
        img: "https://pbs.twimg.com/media/EYT7beFWsAAotlV.png"
    }
]

dogs.each do |attributes|
  Dog.create attributes
end
