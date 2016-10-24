class TenantController < ApplicationController
  def index
    @tenants = Tenant.all.to_json

    respond_to do |format|
      format.json { render json: @tenants }
      format.html { render :index }
    end
  end
end
