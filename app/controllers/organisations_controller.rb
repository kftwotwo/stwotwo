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
      organisation_website = insightly_params_organisation['organisation_website']
      street = insightly_params_organisation['street']
      state = insightly_params_organisation['state']
      city = insightly_params_organisation['city']
      zip_code = insightly_params_organisation['zip_code']
      country = insightly_params_organisation['country']
      Organisation.create_organisation(name_of_organisation, description_of_organisation, organisation_email, organisation_phone, organisation_website, street, city, state, zip_code, country)
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def insightly_params_organisation
    params.require(:organisation).permit(:name_of_organisation, :description_of_organisation, :organisation_email, :organisation_phone, :organisation_website, :street, :city, :state, :zip_code, :country)
  end
end
