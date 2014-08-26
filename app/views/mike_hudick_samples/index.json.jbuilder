json.array!(@mike_hudick_samples) do |mike_hudick_sample|
  json.extract! mike_hudick_sample, :id, :name
  json.url mike_hudick_sample_url(mike_hudick_sample, format: :json)
end
