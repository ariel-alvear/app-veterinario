json.extract! pet, :id, :name, :breed, :birthdate, :client_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
