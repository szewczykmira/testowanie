json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :name, :person_id, :day, :hour
  json.url lesson_url(lesson, format: :json)
end
