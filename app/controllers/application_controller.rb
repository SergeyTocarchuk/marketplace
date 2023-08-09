class ApplicationController < ActionController::Base

  before_action :authenticate_user_or_trader!

  private

  def authenticate_user_or_trader!
    if user_signed_in? || trader_signed_in?
      # Either a User or a Trader is authenticated
    else
      redirect_to new_user_session_path, alert: 'Please sign in.'
    end
  end

end
