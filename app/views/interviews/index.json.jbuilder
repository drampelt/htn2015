json.array!(@interviews) do |interview|
  json.extract! interview, :id, :name, :link, :user_id
  json.url interview_url(interview, format: :json)
end
