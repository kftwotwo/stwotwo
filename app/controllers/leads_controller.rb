class LeadsController < ApplicationController

  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(insightly_params_lead)
    if @lead.save
      InsightlyService::Lead.create(@lead)
      OnBoardMailer.welcome_email(@lead).deliver
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def insightly_params_lead
    params.require(:lead).permit(
    :first_name,
    :last_name,
    :title,
    :organization_name,
    :phone_number,
    :email,
    :training_solution,
    :training_solution_description)
  end
end
