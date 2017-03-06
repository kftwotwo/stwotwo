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
      post :create, :opportunity => {
        :opportunity_name => "test",
        :opportunity_description => "test",
        :opportunity_solution => "New Hire Training",
        :opportunity_solution_description => "still testing"
        }
      expect(response.status).to eq(302)
    end

    it "renders the new template if a field is empty" do
      post :create, :opportunity => {
        :opportunity_name => "test",
        :opportunity_solution => "New Hire Training",
        :opportunity_solution_description => "still testing"
        }
      expect(response).to render_template(:new)
    end
  end
end
