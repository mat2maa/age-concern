class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Pundit
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def pundit_user
    current_user
  end

  private

  def user_not_authorized
    render status: 401, json: { errors: 'User not authorized to perform this action' }
  end

end
