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

end