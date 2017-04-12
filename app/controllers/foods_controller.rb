class FoodsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update]
  def index
    # @foods = Food.paginate(:page => params[:page], :per_page => 10).where(["title LIKE ? ", "%#{params[:search]}%"])
     
     # Serch Foods
      if params[:search]
          @foods = Food.paginate(page: params[:page], per_page: 10)
          @foods = @foods.where(["title LIKE ? ", "%#{params[:search]}%"])
      elsif params[:city]
        @foods = Food.paginate(page: params[:page], per_page: 10)
        @foods = @foods.where(["location LIKE ? ", "%#{params[:city]}%"])
      elsif params[:type]
        @foods = Food.paginate(page: params[:page], per_page: 10)
        @foods = @foods.where(["food_type LIKE ? ", "%#{params[:type]}%"])
      else
        @foods = Food.all.paginate(page: params[:page], per_page: 10)
      end
     respond_to do |format|
        format.html 
        format.js
      end
  end

  def new
    # Render food post form
    @food = Food.new
  end
  
  def create # Create food post
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
    @food = Food.find(params[:id])
  end
  
  def update
    @food = Food.find(params[:id])
	    params.permit!
        if @food.update_attributes(food_params)
            # sleep 1
            flash[:success] = 'Updated your post'
            redirect_to food_path(@food)
            # respond_to do |format|
            #   format.xml { render(xml: @food) }
            #   format.json { render(json: @food ) }
            # end
        else
            render 'edit'
            flash[:danger] = 'Something went wrong'
        end
  end

  def show
    @food = Food.find(params[:id])
  end
  
  private
  
  # Food parameters
  def food_params
    params.require(:food).permit(:title, :description, :cost, :location, :directions, :nutrition, :calorie, :image1, :image2, :image3, :restaurant, :food_type, :restaurant_web, :published)
  end
end
