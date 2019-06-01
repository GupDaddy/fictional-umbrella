class Place < ApplicationRecord
	belongs_to :user
	geocoded_by :address
	after_validation :geocode
	
	validates :name, length: { minimum: 4 }
	validates :description, :address, presence: true
end
