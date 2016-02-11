json.array!(@cities) do |city|
  json.extract! city, :id, :name, :temperature, :image
  json.url city_url(city, format: :json)
end
