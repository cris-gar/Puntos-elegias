class UserController < ApplicationController

  before_action :authenticate_user!
  load_and_authorize_resource
  respond_to :html

  def index
    @users = User.all
  end

  def show
    @points = Point.where(user_id: params[:id])
  end

  def juez
    @users = User.where.not(role_id: 3)
  end

  def update
    @users = User.find(params[:id])
    if @users.role_id == 1
      @users.update(:role_id => 2)
    else
      @users.update(:role_id => 1)
    end
    redirect_to user_juez_path
  end

  private
  def set_user
    @users = User.find(params[:id])
  end
  
end
