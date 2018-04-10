class TicketsController < ApplicationController
  def create
  @ticket = Ticket.create
  end

  def destroy
  @ticket = Ticket.find(params[:id])
  @ticket.delete
  end

  def update
  @ticket = Ticket.find(params[:id])
  if @ticket.update(book_params)
    redirect_to(@ticket)
  else
    render "edit"
  end
  end

  def show
	@ticket = Ticket.find(params[ :id])
	respond_to do |format|
		format.html
		format.json { render json: @ticket.to_json }
	end
  end
end
