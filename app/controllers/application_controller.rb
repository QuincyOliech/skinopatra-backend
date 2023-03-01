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
    post "/products/" do
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

    # Patch Product
  patch "/products/:id" do 
    product = Product.find(params[:id])
    product.update(
      title: params[:title],
      category: params[:category],
      description: params[:description],
      price: params[:price],
      image_url: params[:image_url] 
    )
    product.to_json
  end

  #Delete a Product
  delete "/products/:id" do
    product = Product.find(params[:id])
    product.destroy
    {
      "Message":"Successfully deleted a Product",
      "Status":"HTTP_400"
    }
  end


end