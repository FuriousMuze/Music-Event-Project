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
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id]) 
    #@venue = Event.venue
    if @event.update_attributes(event_params)
      redirect_to event_path
    else
      render :edit
    # end
    # if @venue.update_attributes()
    #   redirect_to event_path
    # else
    #   render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  def edit
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :body, :date_time, :user_id, :venue_id)
  end

end
