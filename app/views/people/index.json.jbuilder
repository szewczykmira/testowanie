json.array!(@people) do |person|
  json.extract! person, :id, :first_name, :second_name, :birth_date, :group_id, :is_teacher
  json.url person_url(person, format: :json)
end
