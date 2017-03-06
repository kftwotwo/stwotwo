class LeadsController < ApplicationController

  def new
    @insightly = Lead.new
  end



  private

  def insightly_params_lead
    params.require(:lead).permit(:first_name, :last_name, :phone_number, :email)
  end
end
