class FoodsController < ApplicationController
  def index
  end

  def new
    @food = Food.new
  end
  
  def create
    
  end

  def edit
  end

  def show
  end
  
  private
  
  def food_params
    params.require(:food).permit(:title, :description, :cost, :location, :directions, :nutrition, :calorie, :image1, :image2, :image3)
  end
end
