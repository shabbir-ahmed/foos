class FoodsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create, :edit]
  def index
    @foods = Food.paginate(:page => params[:page], :per_page => 10).where(["title LIKE ? ", "%#{params[:search]}%"])
    
     respond_to do |format|
        format.html 
        format.js
      end
  end

  def new
    @food = Food.new
  end
  
  def create
    params.permit!
  	@food = current_user.foods.new(food_params)
  	if @food.save
  		redirect_to food_path(@food)
        flash[:success] = 'Create your delecious food'
  	else
  		render 'new'
        flash[:danger] = 'Something wrong'
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
