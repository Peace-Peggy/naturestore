class AddCustomerInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :customers , :firstname , :string
    add_column :customers , :lastname , :string
    add_column :customers , :address , :string
    add_column :customers , :city , :string
    add_column :customers , :postal_code , :string
    add_reference :customers , :province , foreign_key: true
    add_column :customers , :country , :string
    add_column :customers , :phone , :string
  end
end
