class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  # Create action for product variant

  def create_variant(productid, print_size, price)
    # a product is created
    @productvariant = ProductVariant.create(
      product_id: productid,
      print_size: print_size,
      price: price,
    )

    if !@productvariant.save
      render json: { message: "variant creation failed", errors: @productvariant.errors.full_messages }, status: :unprocessable_entity
      nil # Return `nil` or handle the error as needed
    end

    # create these 4 sizes

    # 4 size variants are created per product automatically

    # variants can be selected

  end

  # Create action for products and automatically generates variants
  def create
    @product = Product.new(
      artist_id: params[:artist_id],
      artpiece_name: params[:artpiece_name],
      description: params[:description],
      image_url: params[:image_url],
      inventory: params[:inventory],
      size: params[:size],
      price: params[:price],
    )

    if @product.save
      create_variant(@product.id, "18 x 24", 60)
      create_variant(@product.id, "24 x 30", 100)
      create_variant(@product.id, "8 x 12", 15)
      create_variant(@product.id, "12 x 18", 30)

      render :show
    else
      render json: { message: "failed to save product", errors: @product.errors.full_messages }, status: :unprocessable_entity
    end

    # If product is created then call create_variant method

  end

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def update
    @product = Product.find_by(id: params[:id])

    if @product
      @product.update(
        artist_id: params[:artist_id] || @product.artist_id,
        artpiece_name: params[:artpiece_name] || @product.artpiece_name,
        description: params[:description] || @product.description,
        image_url: params[:image_url] || @product.image_url,
        inventory: params[:inventory] || @product.inventory,
        size: params[:size] || @product.size,
        price: params[:price] || @product.price,
      )
      render :show
    else
      render json: { mesaage: "product not found" }
    end
  end

  def destroy
    @product = Product.find_by(id params[:id])
    @product.destroy
    render json: { message: "product has been deleted" }
  end
end
