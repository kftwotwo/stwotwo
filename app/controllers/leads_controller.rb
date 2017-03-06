class LeadsController < ApplicationController

  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(insightly_params_lead)
    if @lead.save
      first_name = insightly_params_lead['first_name']
      last_name = insightly_params_lead['last_name']
      phone_number = insightly_params_lead['phone_number']
      email = insightly_params_lead['email']
      Lead.create_lead(first_name, last_name, phone_number, email)
      redirect_to root_path
    else
      render :new
    end
  end



  private

  def insightly_params_lead
    params.require(:lead).permit(:first_name, :last_name, :phone_number, :email)
  end
end
