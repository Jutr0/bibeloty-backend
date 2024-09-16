class DocumentsController < ApplicationController
  def create
    @document = Document.create!(document_params)
  end

  private

  def document_params
    params.require(:document).permit(:file)
  end
end
