class MealsController < ApplicationController

    def index
        @meals = Meal.all
    end

    def show
        @meal - Meal.find_by_id(params[:id])
    end

    def new
        @meal = Meal.new
        @meal.build_chef
        @meal.build_customer
    end

    def create
        @meal = Meal.new(meal_params)

        if @meal.save
            redirect_to meals_path
        else
            render :new
        end
    end

    def edit
        @meal = Meal.find_by_id(params[:id])
    end

    def update
        @meal = Meal.find_by_id(params[:id])

        @meal.update(meal_params)
        redirect_to meal_path(@meal)
    end

    def destroy
        @meal = Meal.find_by_id(params[:id])
        @meal.destroy
        redirect_to songs_path
    end

    private

    def meal_params
        params.require(:meal).permit(:name, :ingredients, :price, :chef_id, :customer_id, chef_attributes: [:name], customer_attributes: [:name])
    end

end
