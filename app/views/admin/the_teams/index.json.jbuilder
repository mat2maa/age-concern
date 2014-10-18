json.array!(@the_teams) do |the_team|
  json.extract! the_team, :id, :trustees_text, :staff_text, :volunteers_text
  json.url the_team_url(the_team, format: :json)
end
