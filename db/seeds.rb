puts "🌱 Seeding products..."  

#create prodcut instance 
p1 = Product.create(
    title: "",
    category: "",
    description: "",
    price: ,
    image_url: "https://bit.ly/41BEeqy"
    
)

#create user instance 
20.times do
    u1 = User.create(
        name: Faker::Name.name
    )
end

#create event instance
e1 = Review.create(
    star_rating: rand(1..10),
    comment:"",
    user_id: u1.id,
    product_id: p1.id
)

puts "✅ Done seeding!"