module ApplicationHelper

	def signed_in?
		if session[:employee_id].nil?
			return
		  else
			@current_employee = Employee.find_by_id(session[:employee_id])
		end
	end

	def euro(ammount)#method with a formal parameter so unlike jave no type in front of the name//
		number_to_currency(ammount, :unit => "&euro;")	
	end
	
	def ammountDue (total , paid)
		return total - paid;
	end
end
