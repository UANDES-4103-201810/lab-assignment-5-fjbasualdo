class PlacesController < ApplicationController
  def create
  @place = Place.create
  end

  def destroy
  @place = Place.find(params[:id])
  @place.delete
  end

  def update
  @place = Place.find(params[:id])
  if @place.update(book_params)
    redirect_to(@place)
  else
    render "edit"
  end
  end

  def show
	@place = Place.find(params[ :id])
	respond_to do |format|
		format.html
		format.json { render json: @place.to_json }
	end
  end
end
