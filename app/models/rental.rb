class Rental < ActiveRecord::Base
	belongs_to :car
	belongs_to :customer
	validates :paid , presence: true
	validates :car_id , presence: true
	validates :startDate , presence: true
	validates :endDate , presence: true
	validates :customer_id , presence: true
	
	def lengthOfRental
		lengthOfRental = ((self.endDate - self.startDate)).to_i;
	end
	
	def costOfRental
		costOfRental = lengthOfRental * self.car.price;
	end
end
