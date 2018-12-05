class Product < ApplicationRecord
    mount_uploader :image, ImageUploader  # carrierwave support for  image column
    belongs_to :category

    paginates_per 4

    has_many :cart_items

    validates :name, :price, presence: true
    validates :price, numericality: {only_integer: true}, length: {maximum: 7}
end
