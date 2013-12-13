json.array!(@passwords) do |password|
  json.extract! password, :id
  json.url password_url(password, format: :json)
end
