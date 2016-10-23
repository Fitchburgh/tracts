class HomeController < ApplicationController
  def index
    if current_manager == nil
      redirect_to '/managers/sign_in'
    else
      redirect_to '/unit/index'
    end
  end
end
