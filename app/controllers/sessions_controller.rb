class SessionsController < ApplicationController

	def create
		employee = Employee.find_by_name(params[:name])	
		if employee && employee.authenticate(params[:password]) 			
			session[:employee_id] = employee.id	#stores the id in the session 	
			redirect_to 	session[:return_to] || root_path	#displays the user/show view
		else  	 		
			flash.now[:notice] = "Invalid name/password combination."      	
			render 'new'		           #shows the signin page again 
		end
	end


	def destroy
		if signed_in?
			session[:employee_id] = nil	
			else
			flash[:notice] = "You need to sign in first"			
			end
		redirect_to signin_path
	end

	def new

	end
	
	def createCustomer
		customer = Customer.find_by_name(params[:name])	
		if customer && customer.authenticate(params[:password]) 			
			session[:customer_id] = customer.id	#stores the id in the session 	
			redirect_to 	session[:return_to] || root_path	#displays the user/show view
		else  	 		
			flash.now[:notice] = "Invalid name/password combination."      	
			render 'new'		           #shows the signin page again 
		end
	end


	def destroyCustomer
		if signedCustomer_in?
			session[:customer_id] = nil	
			else
			flash[:notice] = "You need to sign in first"			
			end
		redirect_to signinCustomer_path
	end

	def newCustomer

	end
end
