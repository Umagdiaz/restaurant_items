require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  let(:admin) { Admin.create(email: 'admin@example.com', password: 'password') }

  before do
    sign_in admin
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "creates a new category" do
        expect {
          post :create, params: { category: { name: "New Category" } }
        }.to change(Category, :count).by(1)
        
        expect(response).to have_http_status(:found)
      end
    end

    context "with invalid attributes" do
      it "does not create a new category" do
        expect {
          post :create, params: { category: { name: "" } }
        }.not_to change(Category, :count)

        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end