json.array!(@maw_events) do |maw_event|
  json.extract! maw_event, :id, :date, :where, :name
  json.url maw_event_url(maw_event, format: :json)
end
