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
    if product.save
      {
        "Message": "Product created successfully",
        "Status": "HTTP_200_OK"
      }.to_json
    else
      {
        "Message": "Failed to create product",
        "Status": "HTTP_400_BAD_REQUEST"
      }.to_json
    end
  end

  # Patch Product
  patch "/products/:id" do 
    product = Product.find(params[:id])
    if product.update(
      title: params[:title],
      category: params[:category],
      description: params[:description],
      price: params[:price],
      image_url: params[:image_url] 
    )
    product.to_json
  else
        {
          "Message": "Failed to update product",
          "Status": "HTTP_400_BAD_REQUEST"
        }.to_json
      end
  end


  #Delete a Product
  delete "/products/:id" do
    product = Product.find(params[:id])
    if product.destroy
      {
        "Message": "Product deleted successfully",
        "Status": "HTTP_200_OK"
      }.to_json
    else
      {
        "Message": "Failed to delete product",
        "Status": "HTTP_400_BAD_REQUEST"
      }.to_json
    end
  end
end
