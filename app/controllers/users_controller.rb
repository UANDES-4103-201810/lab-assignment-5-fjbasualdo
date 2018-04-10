class UsersController < ApplicationController
  def create
  @user = User.create
  end

  def destroy
  @user = User.find(params[:id])
  @user.delete
  end

  def update
  @user = User.find(params[:id])
  if @user.update(book_params)
    redirect_to(@user)
  else
    render "edit"
  end
  end

  def show
	@user = User.find(params[ :id])
	respond_to do |format|
		format.html
		format.json { render json: @user.to_json }
	end
  end
end
