json.array!(@meows) do |meow|
  json.extract! meow, :id, :word
  json.url meow_url(meow, format: :json)
end
