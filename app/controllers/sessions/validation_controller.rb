class Sessions::ValidationController < ApplicationController
  before_action :require_login
  
  def show
    # Require user to be logged in to ensure validation is for correct account
    current_user.update(verified: true) if current_user.id == params[:id].to_i
    redirect_to dashboard_path
  end
end
