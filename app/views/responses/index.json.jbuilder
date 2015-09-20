json.array!(@responses) do |response|
  json.extract! response, :id, :content, :question_id, :positivity, :correctness, :tags, :keywords
  json.url response_url(response, format: :json)
end
