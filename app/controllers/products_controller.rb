class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path notice: 'Product Added!'
    else
      render action: 'new'
    end
  end

  def edit
  end

  def show
  end

  private

    def set_product
    end
  
    def product_params
      params.require(:product).permit(:title, :description, :image_url, :price)
    end
end
