class ProductsController < ApplicationController

  def index
    @products_sections = Product.joins(:section).reorder('sections.order, products.created_at desc').group_by(&:section)
  end

  def show
    @product = Product.find(params[:id])
  end

end
