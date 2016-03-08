json.array!(@hours) do |hour|
  json.extract! hour, :id, :client, :developer, :sprint, :number_of_hours
  json.url hour_url(hour, format: :json)
end
