class UsersController < ApplicationController
  before_action :set_user, only: [:edit]
  
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  def create
     @user = User.new(user_params)

    if @user.save
      redirect_to new_user_path, notice: 'user was successfully created.'
    else
      render :new
    end
  end

  private
    
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
