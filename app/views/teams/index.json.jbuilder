json.array!(@teams) do |team|
  json.extract! team, :id, :nazwa, :opis
  json.url team_url(team, format: :json)
end
