json.array!(@carpoolings) do |carpooling|
  json.extract! carpooling, :id, :name, :telephone, :age, :location_selection, :destination_location, :travel_date, :from, :to, :notes
  json.url carpooling_url(carpooling, format: :json)
end
