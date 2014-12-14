json.array!(@groups) do |group|
  json.extract! group, :id, :name, :person_id, :profile
  json.url group_url(group, format: :json)
end
