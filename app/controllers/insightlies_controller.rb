class InsightliesController < ApplicationController
  def new
    @insightly = Insightly.new
  end

  def create
    @insightly_lead = Insightly.new(insightly_params_lead)
    @insightly_organisation = Insightly.new(insightly_params_organisation)
    if @insightly_lead.save
      @insightly_lead.create_lead(insightly_params_lead)
      redirect_to root
    else
      render :new
    end

    @insightly_lead.create_lead(insightly_params_lead)
    @insightly_lead.create_organisation(insightly_params_organisation)
  end

  private

  def insightly_params_lead
    params.require(:insightly).permit(:first_name, :last_name, :phone_number, :email)
  end

  def insightly_params_organisation
    params.require(:insightly).permit(:name_of_organisation, :description_of_organisation, :organisation_email, :organisation_phone)
  end
end
