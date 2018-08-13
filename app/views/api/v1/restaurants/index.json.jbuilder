json.array! @restaurants do |restaurant|
  json.extract! restaurant, :id, :name, :address
  # json.id restaurant.id
  # json.name restaurant.name
  # json.address restaurant.address
  json.comments restaurant.comments do |comment|
    json.extract! comment, :id, :content
  end
end
