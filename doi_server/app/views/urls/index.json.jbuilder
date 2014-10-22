json.array!(@urls) do |url|
  json.extract! url, :id, :address, :comment, :doi_id
  json.url url_url(url, format: :json)
end
