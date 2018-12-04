class CategoryController < ApplicationController
  def cat
    
    cat = Category.find(params[:id])
    @products = cat.products
  end
end
