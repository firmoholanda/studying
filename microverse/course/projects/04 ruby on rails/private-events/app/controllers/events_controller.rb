class EventsController < ApplicationController
  before_action :logged_in_user
  before_action :host_user, only: [:destroy]

  def index
    @prev_events = Event.past
    @upcoming_events = Event.upcoming
  end

  def show
    redirect_to user_path(current_user) unless (@event = Event.find_by(id: params[:id]))
  end

  def new
    @event = current_user.events_as_host.build
  end

  def create
    @event = current_user.events_as_host.build(event_params)
    if @event.save
      flash[:success] = 'event created!'
      redirect_to @event
    else
      render :new
    end
  end

  def destroy
    @event.destroy
    flash[:success] = 'event deleted'
    redirect_to request.referrer || root_url
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :event_date)
  end
end
