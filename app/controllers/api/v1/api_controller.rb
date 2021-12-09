class Api::V1::ApiController < ApplicationController
  # before_action :require_valid_api_token

  protected

  def require_valid_api_token
    return if request.headers['key'] == api_key
    head :unauthorized
  end

  def api_key
    BrfRails::Application.config.api_request_key
  end
end
