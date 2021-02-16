class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      # when it saves, go to the show page
      redirect_to restaurant_path(@restaurant)
    else
      # when it DOESNT save, show the form again
      render 'new'
      # show the new.html.erb view
    end
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render 'edit'
      # show the edit.html.erb view
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  # STRONG PARAMS / whitelist what the user can give us
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
