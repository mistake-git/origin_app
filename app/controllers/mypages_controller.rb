class MypagesController < ApplicationController
   before_action :set_user,only: [:show,:edit,:update]
  
  def show
       
  end
  
  def edit
      
  end
  
  def update
     @user.update(user_params)
     redirect_to("/mypages/#{@user.id}")
  end
  
  private
  
  def set_user
      @user = User.find(params[:id])
  end
  
  def user_params
      params.require(:user).permit(:name, :email)
  end
    
  
end
