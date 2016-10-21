class UnitController < ApplicationController
  def index
    if current_manager == nil
      redirect_to '/managers/sign_in'
    end
    @managed_units = Unit.all_units(current_manager).to_json

    halt(404) if @managed_units.empty?

    respond_to do |format|
      format.json { render json: @managed_units }
      format.html { render :index }
    end
  end
end
