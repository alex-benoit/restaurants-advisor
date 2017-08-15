class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new()
  end

  def create
    new_restaurant = Restaurant.new(restaurants_params)
    new_restaurant.save
    redirect_to restaurant_path(new_restaurant)
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurants_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    restaurant_to_delete = Restaurant.find(params[:id])
    restaurant_to_delete.destroy
    redirect_to restaurants_path
  end

  private

  def restaurants_params
    params.require(:restaurant).permit(:name, :address, :chef_name, :rating)
  end
end
