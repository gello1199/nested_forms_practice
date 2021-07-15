class ChefsController < ApplicationController

    def index
        @chefs = Chef.all
    end

    def show
        @chef = Chef.find_by_id(params[:id])
    end

    def new
        @chef = Chef.new
    end

    def create
        @chef = Chef.new(chef_params)

        if @chef.save
            redirect_to chefs_path
        else
            render :new
        end
    end

    def edit
        @chef = Chef.find_by_id(params[:id])
    end

    def update
        @chef = Chef.find_by_id(params[:id])

        @chef.update(chef_params)
        redirect_to chef_path(@path)
    end

    def destroy
        @chef = Chef.find_by_id(params[:id])

        @chef.destroy
        redirect_to chefs_path
    end

    private

    def chef_params
        params.require(:chef).permit(:name)
    end

end
