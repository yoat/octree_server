json.array!(@players) do |player|
  json.extract! player, :id, :name, :user_id
  json.url player_url(player, format: :json)
end
