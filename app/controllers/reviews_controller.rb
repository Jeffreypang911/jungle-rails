class ReviewsController < ApplicationController
    def create
        @reviews = Review.create(review_params)
        
    end

    def review_params
        params.permit(:product_id, :user_id, :description, :rating)
    end

end