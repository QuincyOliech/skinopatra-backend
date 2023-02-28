class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

    #get all products
    get '/products' do
        products = Product.all
        products.to_json(
            include: {
                reviews: {
                    include: :user
                }
            })
    end

    #get single product
    get '/products/:id' do 
        product = Product.find(params[:id])
        product.to_json(
          include: {
            reviews: {
              include: :user
            }
          }
        )
      end

  #post product
    post "/product/" do
      product = Product.create(
        title: params[:title],
        category: params[:category],
        description: params[:description],
        price: params[:price],
        image_url: params[:image_url] 
      )
      product.save
      {
        "Message": "Created Successfully",
        "Status": "HTTP_200_OK"
      }.to_json
    end

end