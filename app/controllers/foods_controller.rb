class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end
  
  def create
    params.permit!
  	@food = current_user.foods.new(food_params)
  	if @food.save
  		redirect_to food_path(@food),
        success: 'Create your delecious food'
  	else
  		render 'new',
        danger: 'Something wrong'
  	end
  end

  def edit
  end

  def show
    @food = Food.find(params[:id])
  end
  
  private
  
  def food_params
    params.require(:food).permit(:title, :description, :cost, :location, :directions, :nutrition, :calorie, :image1, :image2, :image3)
  end
end
