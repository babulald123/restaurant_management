module Restaurant
  class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

    def index
      @restaurants = Restaurant.all
      render json: RestaurantSerializer.new(@restaurants).serializable_hash
    end

    def show
      render json: RestaurantSerializer.new(@restaurant).serializable_hash
    end

    def create
      @restaurant = Restaurant.new(restaurant_params)
      if @restaurant.save
        render json: RestaurantSerializer.new(@restaurant).serializable_hash, status: :created
      else
        render json: { errors: @restaurant.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def update
      if @restaurant.update(restaurant_params)
        render json: RestaurantSerializer.new(@restaurant).serializable_hash
      else
        render json: { errors: @restaurant.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def destroy
      @restaurant.destroy
      head :no_content
    end

    private

    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
      params.require(:restaurant).permit(:name, :opening_time, :closing_time)
    end
  end
end
