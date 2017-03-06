class OrganisationsController < ApplicationController

  def new

  end

  private

  def insightly_params_organisation
    params.require(:organisation).permit(:name_of_organisation, :description_of_organisation, :organisation_email, :organisation_phone)
  end
end
