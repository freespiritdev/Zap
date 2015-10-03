class WomenController < ApplicationController
  before_action :set_woman, only: [:show, :edit, :update, :destroy]
  def index
    @women = Woman.all
  end

  def new
    @woman = Woman.new
  end

  def create
    @woman = Woman.new(woman_params)
    if @woman.save
      redirect_to women_path, notice: "Women item added!"
    else
      render action: 'new'
    end
  end

  def show
    @woman = Woman.find(params[:id])
  end
  
  private
    def set_woman
    end
    
    def woman_params
      params.require(:woman).permit(:title, :description, :image_url, :price)
    end
end
