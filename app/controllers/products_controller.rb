class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product, notice: 'Product Added!'
    else
      render action: 'new'
    end
  end

  def edit
  end

  def show
  end

  private
  
    def product_params
      params.require(:product).permit(:title, :description, :image_url, :price)
    end
end
