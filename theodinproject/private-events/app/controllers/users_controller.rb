class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :show, :destroy]
    
  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    @events_as_host = @user.events_as_host
    @attending_events = @user.events_as_guest.where('invites.reply' => 'yes')
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "welcome to the private-events app!"
      log_in @user
      redirect_to events_path
    else
      render :new
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email)
    end
end
