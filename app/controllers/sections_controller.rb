class SectionsController < ApplicationController

  def index
    @sections = Section.all.reorder(:order)
  end

end
