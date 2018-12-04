class Product < ApplicationRecord
    mount_uploader :image, ImageUploader  # carrierwave support for  image column
    belongs_to :category

    paginates_per 4
end
