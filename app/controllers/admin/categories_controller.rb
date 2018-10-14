class Admin::CategoriesController < ApplicationController
	http_basic_authenticate_with name: ENV['ADMIN_AUTH_USER'], password: ENV['ADMIN_AUTH_PASSWORD']
	
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
		params.require(:category).permit(:name)
	end
end
  