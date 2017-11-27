json.extract! room, :id, :name, :theme, :img_url, :created_at, :updated_at
json.url room_url(room, format: :json)
