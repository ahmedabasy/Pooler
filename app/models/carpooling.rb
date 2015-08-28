class Carpooling < ActiveRecord::Base

	validates :name, presence: true
	validates :location_selection, :destination_location, presence: true
	# validates :travel_date, : {message: "choose the valid date"}
	# validates_with ValidateLocation, fields: [:location_selection, :destination_location, :travel_date]

	validate :mydate_is_date?

	def mydate_is_date?
    if !travel_date.is_a?(Date)
      errors.add(:travel_date, 'must be a valid date') 
    end
end
end