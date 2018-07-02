class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  helper_method :current_user

  def contacts
    service = Youtube::PeopleServiceService.new
    service.authorization = secrets.to_authorization
  end

end
