class Post < ActiveRecord::Base
	attr_accessible :content, :car_id, :customer_id
	belongs_to :car
	belongs_to :customer
end
