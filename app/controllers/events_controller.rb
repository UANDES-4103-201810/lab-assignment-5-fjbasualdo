class EventsController < ApplicationController
  def create
  @event = Event.create
  end

  def destroy
  @event = Event.find(params[:id])
  @event.delete
  end

  def update
  @event = Event.find(params[:id])
  if @event.update(book_params)
    redirect_to(@event)
  else
    render "edit"
  end
  end

  def show
	@event = Event.find(params[ :id])
	respond_to do |format|
		format.html
		format.json { render json: @event.to_json }
	end
  end
end
