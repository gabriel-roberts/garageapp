class Customer < ActiveRecord::Base
	attr_accessible :name, :email, :address, :phone, :PPSN, :age, :full_licance, :insurance_type
	has_many :rentals, :dependent => :destroy
	has_many :posts, :dependent => :destroy
	validates :PPSN , presence: true
	validates :age , presence: true
	validates :name , presence: true
	validates :insurance_type , presence: true
	validates :phone , presence: true
	validates :address , presence: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/} 
	validates :email,  uniqueness: true
	
	def dob
		dob = ((Date.current - self.age)/365).to_i
	end
end
