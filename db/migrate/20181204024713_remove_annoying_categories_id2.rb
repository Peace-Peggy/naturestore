class RemoveAnnoyingCategoriesId2 < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :categories , :products
  end
end
