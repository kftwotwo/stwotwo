require 'rails_helper'

describe OrganisationsController do

  describe "GET new" do
    it "renders a 200 response" do
      get :new
      expect(response.status).to eq(200)
    end

    it "renders the new template" do
      get :new
      expect(response).to render_template(:new)
    end

    it "assigns a new category" do
      get :new
      expect(assigns(:organisation)).to be_a_new(Organisation)
    end
  end

  describe "POST create", :vcr => true do
    it "renders a 302 response" do
      post :create, :organisation => {:name_of_organisation => "test", :description_of_organisation => "test", :organisation_email => "test", :organisation_phone => "test"}
      expect(response.status).to eq(302)
    end

    it "renders a 200 if a field is empty" do
      post :create, :organisation => {:name_of_organisation => "test", :organisation_email => "test", :organisation_phone => "test"}
      expect(response).to render_template(:new)
    end
  end
end
