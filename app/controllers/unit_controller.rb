#
class UnitController < ApplicationController
  def index
    if current_manager == nil
      redirect_to '/managers/sign_in'
    else
      @managed_units = Unit.all_units(current_manager).to_json

      halt(404) if @managed_units.empty?

      respond_to do |format|
        format.json { render json: @managed_units }
        format.html { render :index }
      end
    end
  end

  def add
    @unit = Unit.new
  end

  def create
    @unit = Unit.new(unit_params)
    if @unit.save
      redirect_to unit_index_path
    else
      render ''
    end
  end

  def expand
    @expanded_unit = Unit.where(id: 1).to_json
  end

  private

  def unit_params
    params.require(:unit).permit(:tenant_id, :manager_id, :owner_id, :name, :notes, :address, :tenant_signatory)
  end
end
