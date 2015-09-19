json.array!(@questions) do |question|
  json.extract! question, :id, :content, :interview_id, :answer
  json.url question_url(question, format: :json)
end
