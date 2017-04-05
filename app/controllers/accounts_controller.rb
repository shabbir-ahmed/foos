class AccountsController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end
  
  def create
        params.permit!
  	    @user = User.new(user_params)
      	if @user.save
      		redirect_to root_url,
            success: 'Login to use your credential'
      	else
      		render 'new',
            danger: 'Something wrong'
      	end
  end
  
  def login
  end
  
  def user_session
      user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            # Log the user in and redirect to the user's show page.
            # redirect_to root_path
            redirect_to root_url
      		#success: 'Your Profile updated'
        else
          	redirect_to login_path,
          	danger: 'Invalid email/password combination'
        end
  end

    def logout #-> User session destroy
        log_out
        redirect_to root_url
    end
  
  def show
      @user = User.find(params[:id])
  end

  def edit
      @user = User.find(params[:id])
  end
  
  def update
        @user = User.find(params[:id])
	    params.permit!
        if @user.update_attributes(update_params)
            # sleep 1
            # redirect_to account_path(@user)
            flash[:success] = 'Updated your profile'
            respond_to do |format|
              format.xml { render(xml: @user) }
              format.json { render(json: @user ) }
            end
        else
            render 'edit'
            flash[:danger] = 'Something went wrong'
        end
  end
  
  private
  
    def user_params
        params.require(:user).permit(:full_name, :email, :password, :password_confirmation)
    end
    
    def update_params
        params.require(:user).permit(:full_name, :email, :image, :headline, :summery, :position, :dob, :gender, :phone, :address, :nationality, :religion)
    end
end
