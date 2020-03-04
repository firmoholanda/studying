class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  before_action :user_logged_in?, except: %i[new create]

  # GET /users
  def index
    @users = User.paginate(page: params[:page])
  end

  # GET /users/1
  def show; end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit; end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'accout created, welcome!'
      log_in(@user)
      redirect_to @user
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      redirect_to @user
      flash[:notice] = 'User was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_url
    flash.now[:notice] = 'User was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
