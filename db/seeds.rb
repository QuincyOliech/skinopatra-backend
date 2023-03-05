puts "🌱 Seeding products..."  

#create prodcut instance 

  
    # categoryarr = ["treatments and serums","cleansers","moisturizers","body scrubs & exfoliators","bath & body", "tools & devices", "lip care"]
    
      
# p1 = Product.create(
#     title: Faker::Commerce.product_name,
#     category: categoryarr.sample,
#     description: Faker::Lorem.sentence,
#     price: rand(10..100),
#     image_url: "https://bit.ly/41BEeqy" 
# )
p1 = Product.create(
    [ 
        {
          "title": "Niacinamide Serum",
          "category": "treatments and serums",
          "description": "Contains 10% Niacinamide (Vitamin B3) and 5.7% Zinc PCA which work together to reduce hyperpigmentation, blemishes, control sebum production, even out the skin tone and texture.",
          "price": "25",
          "totalItems": 30,
          "itemsSold": 7,
          "image": "https://images.pexels.com/photos/8101532/pexels-photo-8101532.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
        },
        {
          "title": "Kombucha Toner",
          "category": "cleansers",
          "description": "Toner is infused with 1% PHA, Hyaluronic Acid, Kombucha and African Rooibos Leaf Extract to protect the skin barrier by balancing skin pH.",
          "price": "20",
          "totalItems": 50,
          "itemsSold": 20,
          "image": "https://images.pexels.com/photos/8131585/pexels-photo-8131585.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
        },
        {
          "title": "Green Tea Cleanser",
          "category": "cleansers",
          "description": "This daily foam cleanser is infused with 0.5% Salicylic Acid, Green Tea and African Rice Extract to deeply cleanse the skin and remove impurities",
          "price": "25",
          "totalItems": 70,
          "itemsSold": 22,
          "image": "https://images.pexels.com/photos/6168341/pexels-photo-6168341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
        },
        {
          "title": "Moringa Handcream",
          "category": "moisturizers",
          "description": "Powered by 1% African Argan Oil, Hyaluronic Acid and Moringa Extract to nourish, revive, and deeply moisturise and hydrate your skin.",
          "price": "15",
          "totalItems": 60,
          "itemsSold": 40,
          "image": "https://images.pexels.com/photos/8140914/pexels-photo-8140914.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
        },
        {
          "title": "Anti-ageing Argan Oil",
          "category": "treatments and serums",
          "description": "Powered by 3% Squalane, 2% Niacinamide, 1% African Argan Oil, Hyaluronic Acid and Moringa Extract to nourish and revive skin",
          "price": "30",
          "totalItems": 30,
          "itemsSold": 20,
          "image": "https://images.pexels.com/photos/8140898/pexels-photo-8140898.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
        },
        {
          "title": "Bamboo Exfoliating Brush",
          "category": "body scrubs & exfoliators",
          "description": "A daily Dry Body Brushing Ritual is an outstanding way to boost the vitality of your skin and body. It is made of pig bristle and FSC certified beech wood",
          "price": "10",
          "totalItems": 30,
          "itemsSold": 20,
          "image": "https://images.pexels.com/photos/4830801/pexels-photo-4830801.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
        },
        {
          "title": "Cinnabar Soap",
          "category": "bath & body",
          "description": "Cinnabar soap contains Cinnamon and Rosemary Hydrosol which are strong antioxidant that helps protect the skin against UV damage.",
          "price": "15",
          "totalItems": 30,
          "itemsSold": 20,
          "image": "https://images.pexels.com/photos/6621323/pexels-photo-6621323.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
        },
        {
          "title": "Hibiscus Facewash",
          "category": "bath & body",
          "description": "Hydrating Facewash infused with 1% PHA, Hyaluronic Acid,Hibiscus, Kombucha and African Rooibos Leaf Extract to protect the skin barrier.",
          "price": "25",
          "totalItems": 30,
          "itemsSold": 22,
          "image": "https://images.pexels.com/photos/8533265/pexels-photo-8533265.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
        },
        {
          "title": "Jade Roller",
          "category": "tools & devices",
          "description": "Jade Roller is very smooth and made of rose quartz. It provides cooling and energizes the skin.",
          "price": "17",
          "totalItems": 30,
          "itemsSold": 20,
          "image": "https://images.pexels.com/photos/6621355/pexels-photo-6621355.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
        },
        {
          "title": "Vitamin C Serum",
          "category": "treatments and serums",
          "description": "Infused with super ingredients to give you The Glow Effect. Powered by 8% Vitamin C, 2% Arbutin and African Baobab",
          "price": "30",
          "totalItems": 30,
          "itemsSold": 20,
          "image": "https://images.pexels.com/photos/8054395/pexels-photo-8054395.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
        },
        {
          "title": "Vitamin C Toner",
          "category": "cleanser",
          "description": "vegan",
          "price": "40",
          "image": "https://images.pexels.com/photos/5462208/pexels-photo-5462208.jpeg?auto=compress&cs=tinysrgb&w=1600"

        },
        {
          "title": "Peach Lip Balm ",
          "category": "lip care",
          "description": "A nourishing lip balm to protect against dryness and provide long-lasting care for the delicate lip area. A blend of plant-based oils effectively moisturises, making rough and chapped lips feel velvety soft again.",
          "price": "10",
          "image": "https://images.pexels.com/photos/6167864/pexels-photo-6167864.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
          
        },
        {
          "title": "Exfoliating Wooden Brush",
          "category": "body scrubs & exfoliators",
          "description": "DecorRack Wood Bath Brush with Natural Bristle, Detachable Wooden Handle for Exfoliating Back, Body, and Feet, Promotes Healthy Smooth Skin",
          "price": "18",
          "image": "https://images.pexels.com/photos/6621326/pexels-photo-6621326.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
          
        },
        {
          "title": "Lavendar Bath Bomb",
          "category": "bath & body ",
          "description": "This bath bomb has it all going on! Buttery piping, bright colours, mango scents and pure Mandarin and Orange essential oils",
          "price": "28",
          "image": "https://images.pexels.com/photos/6683000/pexels-photo-6683000.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
        
        },
        {
          "title": "Lavendar Bath Salt",
          "category": "bath & body",
          "description": "Lavender Scented Bath Salt For Bath or Soaking Tub",
          "price": "8",
          "image": "https://images.pexels.com/photos/7418924/pexels-photo-7418924.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
         
        },
        {
          "title": "Orange Eye Oil",
          "category": "cleansers",
          "description": "Orange scented oil",
          "price": "32",
          "image": "https://images.pexels.com/photos/8140898/pexels-photo-8140898.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
         
        },
        {
          "title": "Orange Eye Oil",
          "category": "cleansers",
          "description": "Orange scented oil",
          "price": "32",
          "image": "https://images.pexels.com/photos/8140898/pexels-photo-8140898.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
         
        },
        {
          "title": "Orange Eye Oil",
          "category": "cleansers",
          "description": "Orange scented oil",
          "price": "32",
          "image": "https://images.pexels.com/photos/8140898/pexels-photo-8140898.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
          
        },
        {
          "title": "Orange Eye Oil",
          "category": "cleansers",
          "description": "Orange scented oil",
          "price": "32",
          "image": "https://images.pexels.com/photos/8140898/pexels-photo-8140898.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
          
        }
      ]
)

25.times do
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


puts "✅ Done seeding!"