class LeadsController < ApplicationController

  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(insightly_params_lead)
    if @lead.save
      InsightlyService::Lead.create(@lead)
      OnBoardMailer.welcome_email(@lead).deliver
      redirect_to new_organisation_path
    else
      render :new
    end
  end

  private

  def insightly_params_lead
    params.require(:lead).permit(
      :prefix,
      :title,
      :first_name,
      :last_name,
      :organization_name,
      :phone_number,
      :email,
      :website)
  end
end
