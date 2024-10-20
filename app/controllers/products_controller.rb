class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product, only: %i[ show update destroy ]

  def index
    @products = Product.all
  end

  def show
  end

  def create
    @product = Product.create!(product_params)
    render :show, status: :created
  end

  def update
    @product.update!(product_params)
    render :show, status: :ok
  end

  def destroy
    @product.destroy!
  end

  def search_categories
    @categories = Category.where('name ILIKE :q', q: "%#{params[:q]}%").limit(10)
  end

  def search_materials
    @materials = Material.where('name ILIKE :q', q: "%#{params[:q]}%").limit(10)
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :category_id, material_ids: [], product_documents_attributes: [:id, :position, :document_id, :_destroy])
  end
end
