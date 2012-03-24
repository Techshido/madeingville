class UsersController < ApplicationController
  
  def show
    if params[:id].nil?
      @user = current_user
    else
      @user = User.find(params[:id])    
    end
    
    if @user.is_hacker?      
      @interests = @user.interests || []
      @achievements = @user.achievements  || []
      @will_work_for = @user.will_work_for || []
    elsif @user.is_biz_monkey?
      @looking_for = @user.looking_for || []
      @projects = @user.projects || []
    end
  end

end
