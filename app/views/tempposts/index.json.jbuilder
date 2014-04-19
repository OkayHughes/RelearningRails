json.array!(@tempposts) do |temppost|
  json.extract! temppost, :id, :title, :text
  json.url temppost_url(temppost, format: :json)
end
