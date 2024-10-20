class CategoriesController < ApplicationController
  before_action :set_category, only: %i[ show update destroy ]

  def index
    @categories = Category.all
  end

  def show
  end

  def create
    @category = Category.create!(category_params)
    render :show
  end

  def update
    @category.update!(category_params)
    render :show
  end

  def destroy
    if @category.products.exists?
      @category.errors.add(:base, "Used in product")
      raise ActiveRecord::RecordInvalid.new(@category)
    end
    @category.destroy!
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
