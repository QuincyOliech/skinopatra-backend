puts "🌱 Seeding products..."  

#create prodcut instance 
19.times do
    categoryarr = ["treatments and serums","cleansers","moisturizers","body scrubs & exfoliators","bath & body", "tools & devices", "lip care"]
p1 = Product.create(
    title: Faker::Commerce.product_name,
    category: categoryarr.sample,
    description: Faker::Lorem.sentence,
    price: rand(50..150),
    image_url: "https://bit.ly/41BEeqy"    
)
rand(1..5).times do
    Review.create(
        star_rating: rand(1..10),
        comment: Faker::Lorem.sentence,
        user_id: rand(1..20),
        product_id: p1.id
    )
end
end
#create user instance 
20.times do
u1 = User.create(
        name: Faker::Name.name
 )
end


#create event instance


puts "✅ Done seeding!"