json.array!(@gists) do |gist|
  json.extract! gist, :id, :src, :lang, :desc
  json.url gist_url(gist, format: :json)
end
