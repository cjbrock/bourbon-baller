class BourbonsController < ApplicationController

    def index
        @bourbons = Bourbon.all
    end

    def new
        @bourbon = Bourbon.new
        @bourbon.build_distillery
    end

    def create
        @bourbon = Bourbon.new(bourbon_params)
        if @bourbon.save
            redirect_to bourbons_path
        else
            @bourbon.build_distillery
            render :new
        end
    end

    def ratings
        @bourbons = Bourbon.grouped_ratings
    end

    private

    def bourbon_params
        params.require(:bourbon).permit(:name, :kind, :description, :distillery_id, distillery_attributes: [:name])
    end
end
