class Admin::SectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_section, only: [:update, :destroy]

  def index
    @sections = Section.all.reorder(:order)
  end

  def create
    @section = Section.create!(section_params)
    render :show
  end

  def update
    @section.update!(section_params)
    render :show
  end

  def destroy

    if @section.products.exists?
      @section.errors.add(:base, "Used in product")
      raise ActiveRecord::RecordInvalid.new(@section)
    end

    @section.destroy!
  end

  private

  def set_section
    @section = Section.find(params[:id])
  end

  def section_params
    params.require(:section).permit(:name)
  end
end
