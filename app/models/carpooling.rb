class Carpooling < ActiveRecord::Base

	validates :name, presence: true
	validates :location_selection, :destination_location, presence: true

	validate :mydate_is_date?

	def mydate_is_date?
    if !travel_date.is_a?(Date)
      errors.add(:travel_date, 'must be a valid date') 
    end
end


end