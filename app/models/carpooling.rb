class Carpooling < ActiveRecord::Base
	validates :name, :location_selection, :destination_location, :travel_date, presence: true
end
