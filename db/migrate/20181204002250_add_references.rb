class AddReferences < ActiveRecord::Migration[5.2]
  def change
    add_reference(:products, :categories)
  end
end
