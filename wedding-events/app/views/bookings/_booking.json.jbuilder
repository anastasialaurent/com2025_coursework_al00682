json.extract! booking, :id, :event_id, :room_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
