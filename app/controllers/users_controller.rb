class UsersController < ApplicationController
  respond_to :html

  def update
    @user = User.find params[:id]
    if @user.update_attributes params[:user]
      flash[:success] = "Saved!"
      respond_with @user
    else
      flash[:error] = "Fail!"
      respond_with @user
    end
  end
  
  def edit
    @user = User.find params[:id]
  end
  
  def show
    if params[:id].nil?
      @user = current_user
    else
      @user = User.find(params[:id])
    end
    
    if @user.is_hacker?      
      @interests = @user.interests || []
      @achievements = @user.achievements || []
      @achievements.build if @user == current_user
      @will_work_for = @user.will_work_for || []
    elsif @user.is_biz_monkey?
      @looking_for = @user.looking_for || []
      @projects = @user.projects || []
    end
  end

end
