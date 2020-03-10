class UsersController < ApplicationController
  before_action :logged_in_user, only: %i[index show destroy]

  def index
    @users = User.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = 'welcome to the private-events app!'
      redirect_to events_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])

    @events_as_host = @user.events_as_host
    @attending_events = @user.events_as_guest.where('invites.reply' => 'yes')
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
