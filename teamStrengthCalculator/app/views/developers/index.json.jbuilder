json.array!(@developers) do |developer|
  json.extract! developer, :id, :name, :dev_type
  json.url developer_url(developer, format: :json)
end
