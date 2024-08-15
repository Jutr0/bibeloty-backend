class MaterialsController < ApplicationController
  before_action :set_material, only: [:update, :destroy]
  def index
    @materials = Material.all
  end

  def create
    @material = Material.create!(material_params)
    render :show
  end

  def update
    @material.update!(material_params)
    render :show
  end

  def destroy
    @material.destroy!
  end

  private

  def set_material
    @material = Material.find(params[:id])
  end

  def material_params
    params.require(:material).permit(:name)
  end
end
