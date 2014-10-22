json.array!(@dois) do |doi|
  json.extract! doi, :id, :doi_num
  json.url doi_url(doi, format: :json)
end
