json.array!(@octs) do |oct|
  json.extract! oct, :id, :player_id, :oct_id, :hyper, :alpha, :color, :sign_sha1
  json.url oct_url(oct, format: :json)
end
