class SearchController < ApplicationController
  def index
  end

  def search
    if params[:search].present?
      category = Category.find(params[:cat][:category_id])
      @products = category.products.where('name LIKE ?',"%#{params[:search]}%")

      if @products.empty?
        @message = "No Product Found"
      end     
   else

      @products = nil
     
   end
  end
end

