class PropertyController < ApplicationController
  def index

    if current_manager.nil?
      redirect_to '/managers/sign_in'
    # binding.pry
    end
  end
end
