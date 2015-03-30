json.array!(@dance_teams) do |dance_team|
  json.extract! dance_team, :id, :name, :phone, :email, :members, :HipHop, :Ballet, :Jazz
  json.url dance_team_url(dance_team, format: :json)
end
