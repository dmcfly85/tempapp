json.array!(@temps) do |temp|
  json.extract! temp, :id, :insidetemp, :outsidetemp
  json.url temp_url(temp, format: :json)
end
