class Employee < ActiveRecord::Base
	after_destroy :ensure_an_admin_remains
	attr_accessible :name, :password_digest, :password, :password_confirmation, :email, :address, :phone, :experience, :garage_id, :role, :email
	belongs_to :garage
	has_secure_password
	validates :name , presence: true
	validates :address , presence: true
	validates :phone , presence: true
	validates :experience , presence: true
	validates :role , presence: true
	validates :garage_id , presence: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/} 
	validates :email,  uniqueness: true
	
	private
	def ensure_an_admin_remains
		if Employee.count.zero?
			raise "Can't delete last Employee"
		end
	end

end
