class Garage < ActiveRecord::Base
has_many :employees, :dependent => :destroy
has_many :cars, :dependent => :destroy
validates :name , presence: true
validates :address , presence: true
validates :phone , presence: true

geocoded_by :address
	after_validation :geocode, :if => :address_changed?
	
	def self.search(searchGarage)
		search_condition ="%" + searchGarage + "%"
		find(:all, :conditions => ['Name LIKE  ?', search_condition])
	end
end
