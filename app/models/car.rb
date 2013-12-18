class Car < ActiveRecord::Base
	attr_accessible :make, :model, :age, :Reg, :color, :version, :garage_id, :photo, :price
	belongs_to :garage
	has_many :rentals, :dependent => :destroy
	has_many :posts, :dependent => :destroy
	validates :Reg , presence: true
	validates :garage_id , presence: true
	validates :make , presence: true
	validates :model , presence: true
	validates:age, presence: true
	validates :color , presence: true
	validates :version , presence: true
	validates :price , presence: true
	
	def self.search(search)
		search_condition ="%" + search + "%"
		find(:all, :conditions => ['Make LIKE  ?', search_condition])
	end
end
