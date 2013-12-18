class PostsController < ApplicationController
  def create
		@car = Car.find params[:car_id]
			@post = @car.posts.create params[:post]
			@post.employee_id = @current_employee.id
			@post.save
		respond_to do |format|
			format.html{redirect_to @car}
		end
	end
end
