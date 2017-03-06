require 'rails_helper'

describe LeadsController do

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
      expect(assigns(:lead)).to be_a_new(Lead)
    end
  end

  describe "POST create", :vcr => true do
    it "renders a 302 response" do
      post :create, :lead => {:prefix => "jr.", :title => "welder", :first_name => "test", :last_name => "test", :organization_name => "weld_it", :phone_number => "test", :email => "test", :website => "test.com"}
      expect(response.status).to eq(302)
    end

    it "renders the new if a fields are empty" do
      post :create, :lead => {:last_name => "test", :phone_number => "test", :email => "test"}
      expect(response).to render_template(:new)
    end
  end
end
