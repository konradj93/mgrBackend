# frozen_string_literal: true

class ApplicationController < ActionController::API
  include JSONAPI::Errors
  include ActionController::Cookies

  def render_jsonapi_internal_server_error(exception)
    raise exception if Rails.env.development?
    error = { status: '500', title: Rack::Utils::HTTP_STATUS_CODES[500] }
    render jsonapi_errors: [error], status: :internal_server_error
  end

  attr_reader :current_user

  def authenticate_user
    token = cookies.signed[:jwt]
    decoded_token = CoreModules::JsonWebToken.decode(token)
    @current_user = User.find_by(id: decoded_token['user_id']) if decoded_token
    return @current_user if @current_user

    render json: { errors: [{ message: 'you must be authorized to proceed this action' }] }, status: :unauthorized
  end


end
