class Admin::SessionsController < Devise::SessionsController
  respond_to :json

  def respond_to_on_destroy; end
end
