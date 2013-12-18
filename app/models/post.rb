class Post < ActiveRecord::Base
	attr_accessible :content, :car_id, :employee_id
	belongs_to :car
	belongs_to :employee
end
