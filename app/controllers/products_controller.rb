class ProductsController < ApplicationController
  def index
    @products = Product.all.page params[:page]
  end

  def new
    @product = Product.find(params[:id])
  end

  def edit
  end
end
