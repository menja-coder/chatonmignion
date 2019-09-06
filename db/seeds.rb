# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

cart =["https://cdn.pixabay.com/photo/2018/07/13/10/20/cat-3535404_960_720.jpg","https://cdn.pixabay.com/photo/2017/07/25/01/22/cat-2536662_960_720.jpg","https://cdn.pixabay.com/photo/2018/03/29/21/51/cute-3273789_960_720.jpg","https://cdn.pixabay.com/photo/2015/06/09/09/35/animal-children-803123_960_720.jpg","https://cdn.pixabay.com/photo/2016/09/05/21/37/cat-1647775_960_720.jpg",

    "https://cdn.pixabay.com/photo/2017/04/04/14/29/cat-2201460_960_720.jpg","https://cdn.pixabay.com/photo/2018/03/28/16/37/cat-3269765_960_720.jpg","https://cdn.pixabay.com/photo/2013/12/12/03/08/kitten-227009_960_720.jpg",
    "https://cdn.pixabay.com/photo/2018/05/30/19/29/cat-3442257__340.jpg",
		"https://www.courrierinternational.com/sites/ci_master/files/styles/image_original_1280/public/assets/images/bengal-2042592_960_720.jpg?itok=2gdDKYqC",
		"http://lorempixel.com/640/480/cats"]

for i in (0..cart.length-1)

    Item.create!(title: Faker::Creature::Cat.name,
								description:Faker::Creature::Cat.registry,
                price: Faker::Commerce.price,
                image_url: cart[i])

end
