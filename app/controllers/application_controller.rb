class
ApplicationController < ApplicationBasicController
  before_action :set_default_format


  def set_default_format
    request.format = :json
  end
end
