class FavouritesController < ApplicationController
  before_action :set_car, only: [:create]
  def create
    @favourite = Favourite.new
    @favourite.car = @car
    if @favourite.save
      redirect_to car_path(@car)
    else
      render 'car/show', status: :unprocessable_entity
    end
  end

  def index
    @favourites = Favourite.all
  end

  def destroy
    # raise
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to favourites_path, status: :see_other
  end

private

  def set_car
    @car = Car.find(params["car_id"])
  end
# destroy and index TBC
end
