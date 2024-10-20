class ApplicationBasicController < ActionController::API
  rescue_from Exception do |exception|
    log_exception(exception)
    if exception.instance_of?(ActiveRecord::RecordNotFound)
      record_not_found
    elsif exception.instance_of?(ActionController::BadRequest)
      not_valid_data
    elsif exception.instance_of?(ActiveRecord::RecordInvalid)
      record_invalid(exception)
    elsif exception.instance_of?(CanCan::AccessDenied)
      access_denied(exception)
    else
      server_error
    end
  end

  def record_invalid(exception)
    render json: exception.message, status: :unprocessable_entity
  end

  def access_denied(exception)
    render json: exception.message, status: :unauthorized
  end

  def not_valid_data
    render json: { error: 'bad request' }, status: :bad_request
  end

  def server_error
    render json: { error: 'server error' }, status: :internal_server_error
  end

  def record_not_found
    render json: { error: 'not found' }, status: :not_found
  end
  

  private

  def log_exception(exception)
    exception_name = exception.class.to_s
    Rails.logger.error(
      "Exception #{exception_name}\n"\
      "details: #{exception.message}\n"\
      "backtrace: #{exception.backtrace.filter{|path| !path.include?("gems")}}\n"\
      "on: #{request.path}\n"\
      "with params: #{request.params}\n"
    )
  end
end
