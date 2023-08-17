class ApplicationController < ActionController::Base

  def current_customer
    @current_customer = current_trader || current_user
  end

end
