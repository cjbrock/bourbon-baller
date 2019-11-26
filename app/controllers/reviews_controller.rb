class ReviewsController < ApplicationController

    def index
        if @bourbon = Bourbon.find_by_id(params[:bourbon_id])
            @reviews = @bourbon.reviews.all
        else
            @reviews = Review.all
        end   

    end

    def new
        if @bourbon = Bourbon.find_by_id(params[:bourbon_id])
            @review = @bourbon.reviews.build
        else
            @review = Review.new
        end    
    end

    def create
        @review = current_user.reviews.build(review_params)
        if @review.save
            redirect_to review_path(@review)
        else
            render :new
        end
    end

    def show
        @review = Review.find_by_id(params[:id])
    end

    private
    def review_params
        params.require(:review).permit(:stars, :title, :content, :bourbon_id)
    end
end
