class OrganisationsController < ApplicationController

  def new
    @organisation = Organisation.new
  end

  def create
    @organisation = Organisation.new(insightly_params_organisation)
    if @organisation.save
      InsightlyService::Organisation.create(@organisation)
      redirect_to new_opportunity_path
    else
      render :new
    end
  end

  private

  def insightly_params_organisation
    params.require(:organisation).permit(:name_of_organisation, :description_of_organisation, :organisation_email, :organisation_phone, :organisation_website, :street, :city, :state, :zip_code, :country)
  end
end
