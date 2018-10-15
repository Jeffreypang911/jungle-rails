class ReviewsController < ApplicationController
    def index

    end

    def create
        @product = Product.find(params[:product_id])
        @review = @product.reviews.new(review_params)
        p '================', @review
        @review.user_id = session[:user_id]
        @review.save
        redirect_to @product if @review.save
    end
    
    private
    def review_params
        params.require(:review).permit(:rating, :description)
    end
end