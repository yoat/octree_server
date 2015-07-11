json.array!(@servers) do |server|
  json.extract! server, :id, :user_id, :name, :address
  json.url server_url(server, format: :json)
end
