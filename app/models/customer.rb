class Customer < ActiveRecord::Base
	attr_accessible :name, :email, :address, :phone, :PPSN, :age, :full_licance, :insurance_type, :password_digest, :password, :password_confirmation
	has_many :rentals, :dependent => :destroy
	validates :PPSN , presence: true
	validates :age , presence: true
	validates_presence_of :name
	has_secure_password
	validates :insurance_type , presence: true
	validates :phone , presence: true
	validates :address , presence: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/} 
	validates :email,  uniqueness: true
	
	def dob
		dob = ((Date.current - self.age)/365).to_i
	end
	
	def self.search(searchCustomer)
		search_condition ="%" + searchCustomer + "%"
		find(:all, :conditions => ['name LIKE  ?', search_condition])
	end
end
