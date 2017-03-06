class LeadsController < ApplicationController

  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(insightly_params_lead)
    if @lead.save
      prefix = insightly_params_lead['prefix']
      title = insightly_params_lead['title']
      first_name = insightly_params_lead['first_name']
      last_name = insightly_params_lead['last_name']
      organization_name = insightly_params_lead['organization_name']
      phone_number = insightly_params_lead['phone_number']
      email = insightly_params_lead['email']
      website = insightly_params_lead['website']
      Lead.create_lead(prefix, title, first_name, last_name, organization_name, phone_number, email, website)
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def insightly_params_lead
    params.require(:lead).permit(:prefix, :title, :first_name, :last_name, :organization_name, :phone_number, :email, :website)
  end
end
