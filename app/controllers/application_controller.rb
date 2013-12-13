class ApplicationController < ActionController::Base
  protect_from_forgery
  include ApplicationHelper
  
	
	def store_location
		session[:return_to]=request.fullpath
	end
	
	def authorise
		unless signed_in?
			store_location
			redirect_to signin_path,:notice => "Please sign in to access page."
		end
	end
 

end