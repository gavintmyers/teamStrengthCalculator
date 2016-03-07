json.array!(@developers) do |developer|
  json.extract! developer, :id, :name, :type
  json.url developer_url(developer, format: :json)
end
