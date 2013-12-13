class Garage < ActiveRecord::Base
has_many :employees, :dependent => :destroy
has_many :cars, :dependent => :destroy
validates :name , presence: true
validates :address , presence: true
validates :phone , presence: true
end
