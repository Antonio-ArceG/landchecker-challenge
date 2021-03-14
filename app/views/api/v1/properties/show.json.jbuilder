# json.array! @property do |category|
#   json.id category.id
  # json.lga category.lga
#   json.council_property_number category.council_property_number
#   json.longitude category.longitude
#   json.latitude category.latitude
# end

# json.extract! @property, :id, :council_property_number, :longitude, :latitude
# json.comments @property.comments do |comment|
#   json.extract! comment, :id, :council_property_number, :longitude, :latitude
# end

# json.extact @property
# json.(@property, :created_at, :updated_at)


  json.id @property.id
  json.lga_code @property.lga.id
  json.council_property_number @property.council_property_number
  json.full_address @property.address.full_address
  json.council @property.lga.name
  json.postcode @property.address.postcode
  json.latitude @property.latitude
  json.longitude @property.longitude


# json.comments @property.comments, :content, :created_at

# json.attachments @property.attachments do |attachment|
#   json.filename attachment.filename
#   json.url url_for(attachment)
# end
