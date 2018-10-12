http_basic_authenticate_with :name => "Jungle", :password => "book" 

class Admin::CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end

    def new
        @category = Category.new
    end

    def create
        @categories = Category.new(catagory_params)

        if @categories.save
            redirect_to [:admin, :categories], notice: 'Product created!'
          else
            render :new
          end
    end

    def catagory_params
        params.require(:category).permit(
          :name
        )
    end
end
  