class SessionsController < Devise::SessionsController
  respond_to :json
  def respond_to_on_destroy; end
  def sign_in_params
    params.require(:user).permit(:login, :password)
  end
end
