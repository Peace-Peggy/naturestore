class Product < ApplicationRecord
    mount_uploader :image, ImageUploader  # carrierwave support for  image column
end
