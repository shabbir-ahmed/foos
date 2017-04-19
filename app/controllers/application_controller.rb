class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  add_flash_types :success, :warning, :danger, :info
  protect_from_forgery with: :exception
  include AccountsHelper
  include ApplicationHelper
  protected
    
    # Check Login
  	def authenticate_user!
        if logged_in?
        else
          redirect_to login_accounts_path(continue: store_location), :danger => 'Please Login To Continue'
        end
    end
end
