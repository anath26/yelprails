class ReviewsController < ApplicationController
	def new
		@restaurant = Restaurant.find params [:restaurant_id]
		@review = Review.new
	end

	def create
		@create = Restaurant.find params[:restaurant_id]
		Review.create params[:review].permit(:name, :content, :rating)
	end
end
