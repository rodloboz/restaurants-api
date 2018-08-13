json.extract! @restaurant, :id, :name, :address
json.comments @restaurant.comments do |comment|
  json.extract! comment, :id, :content
end
json.user do
  json.extract! @restaurant.user, :id, :email
end
