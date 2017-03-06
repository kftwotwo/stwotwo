class OrganisationsController < ApplicationController

  def new
    @organisation = Organisation.new
  end

  def create
    @organisation = Organisation.new(insightly_params_organisation)
    if @organisation.save
      name_of_organisation = insightly_params_organisation['name_of_organisation']
      description_of_organisation = insightly_params_organisation['description_of_organisation']
      organisation_email = insightly_params_organisation['organisation_email']
      organisation_phone = insightly_params_organisation['organisation_phone']
      Organisation.create_organisation(name_of_organisation, description_of_organisation, organisation_email, organisation_phone)
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def insightly_params_organisation
    params.require(:organisation).permit(:name_of_organisation, :description_of_organisation, :organisation_email, :organisation_phone)
  end
end
