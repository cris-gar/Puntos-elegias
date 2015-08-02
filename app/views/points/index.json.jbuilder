json.array!(@points) do |point|
  json.extract! point, :id, :cantidad, :fecha, :user_id
  json.url point_url(point, format: :json)
end
