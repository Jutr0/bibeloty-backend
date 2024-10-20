class DocumentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @document = Document.create!(document_params)
  end

  private

  def document_params
    params.require(:document).permit(:file)
  end
end
