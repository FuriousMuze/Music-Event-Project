class EventsController < ApplicationController
  def index
   @events = Event.all
  end

  def new
    @event = Event.new
  end
  
  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to events_index_path
    else
      render :new
    end
  end

  def show
  end

  def update
  end

  def destroy
  end

  def edit
  end

  def event_params
    params.require(:event).permit(:name, :body, :date_time, :user_id, :venue_id)
  end

end
