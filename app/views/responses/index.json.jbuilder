json.array!(@responses) do |response|
  json.extract! response, :id, :context, :question_id, :positivity
  json.url response_url(response, format: :json)
end
