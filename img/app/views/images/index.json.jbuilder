json.array!(@images) do |image|
  json.extract! image, :id, :filename, :permission, :user_id
  json.url image_url(image, format: :json)
end