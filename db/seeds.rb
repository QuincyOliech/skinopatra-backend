puts "🌱 Seeding products..."  

#create prodcut instance 
25.times do
  
    categories = ["treatments and serums","cleansers","moisturizers","body scrubs & exfoliators","bath & body", "tools & devices", "lip care"]
    categories.each do |name|
        Category.find_or_create_by(name: name)
    end
    categories = Category.all

      
p1 = Product.create(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence,
    price: rand(10..100).to_f,
    image_url: "https://bit.ly/41BEeqy",
    category: categories.sample   
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