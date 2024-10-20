class MaterialsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_material, only: [:update, :destroy]

  def index
    @materials = Material.all
  end

  def create
    @material = Material.create!(document_params)
    render :show
  end

  def update
    @material.update!(document_params)
    render :show
  end

  def destroy

    if @material.products.exists?
      @material.errors.add(:base, "Used in product")
      raise ActiveRecord::RecordInvalid.new(@material)
    end

    @material.destroy!
  end

  private

  def set_material
    @material = Material.find(params[:id])
  end

  def document_params
    params.require(:material).permit(:name)
  end
end
