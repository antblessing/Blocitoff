class UsersController < ApplicationController
  
  before_filter :verify_owner
  
  def show
    
  end
  
  private
  
  def verify_owner
    @user = User.find(params[:id]) if params[:id]
    @user ||= current_user
    
    redirect_to welcome_about_path unless @user == current_user
  end
end
