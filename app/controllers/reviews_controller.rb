class ReviewsController < ApplicationController
    def index

    end

    def create
        @review = Review.create(review_params)
        p "TESTING HEREEEEEEEEE", @review
    end

    def review_params
        params.permit(:product_id, :description, :rating)
    end
end