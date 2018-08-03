json.extract! bike, :id, :size, :gender, :colour, :type, :price, :brand, :image_url, :location, :availability, :model, :created_at, :updated_at
json.url bike_url(bike, format: :json)
