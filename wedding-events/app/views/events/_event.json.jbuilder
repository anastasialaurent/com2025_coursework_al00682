json.extract! event, :id, :name, :description, :date, :time_slot, :no_of_guests, :paid, :client_telephone, :created_at, :updated_at
json.url event_url(event, format: :json)
