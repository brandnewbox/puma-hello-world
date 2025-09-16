class HomeController < ApplicationController
  rescue_from ActionController::InvalidAuthenticityToken, with: :bad_token
  # protect_from_forgery
  # skip_before_action :verify_authenticity_token

  def post
  end

  def get
  end

  def bad_token
    render template: "home/bad_token"
  end
end