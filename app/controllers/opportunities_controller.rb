class OpportunitiesController < ApplicationController

  def new
    @opportunity = Opportunity.new
  end

  def create
    @opportunity = Opportunity.new(insightly_params_opportunity)
    if @opportunity.save
      InsightlyService::Opportunity.create(@opportunity)
      flash[:notice] = "Thank you I will get in contact with you as soon as possible!"
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def insightly_params_opportunity
    params.require(:opportunity).permit(:opportunity_name, :opportunity_description, :opportunity_solution, :opportunity_solution_description)
  end
end
