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


puts "✅ Done seeding!"