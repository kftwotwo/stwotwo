require 'rails_helper'

describe OpportunitiesController do

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
      expect(assigns(:opportunity)).to be_a_new(Opportunity)
    end
  end

  describe "POST create", :vcr => true do
    it "renders a 302 response" do
      opportunity = attributes_for(:opportunity)
      post :create, :opportunity => opportunity
      expect(response.status).to eq(302)
    end

    it "renders the new template if a field is empty" do
      post :create, :opportunity => {:opportunity_name => nil}
      expect(response).to render_template(:new)
    end
  end
end
