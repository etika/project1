json.array!(@appartments) do |appartment|
  json.extract! appartment, :id, :house_type, :location, :rent
  json.url appartment_url(appartment, format: :json)
end
