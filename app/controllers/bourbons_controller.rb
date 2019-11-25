class BourbonsController < ApplicationController

    def index
        @bourbons = Bourbon.all
    end

    def new
        @bourbon = Bourbon.new
    end

    def create
        @bourbon = Bourbon.new(bourbon_params)
        if @bourbon.save
            # do something
        else
            # do something else
        end
    end

    private

    params.require(:bourbon).permit(:name, :type, :description, :distillery_id)
end
