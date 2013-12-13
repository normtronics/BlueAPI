json.array!(@locations) do |location|
  json.extract! location, :id, :id, :lat, :lang
  json.url location_url(location, format: :json)
end
