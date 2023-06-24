require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let(:admin) { Admin.create(email: 'admin@example.com', password: 'password') }
  let(:category) { Category.create(name: "New Category" ) }

  before do
    sign_in admin 
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "creates a new item" do
        expect {
          post :create, params: { item: { name: "New Item", category_id: category.id } }
        }.to change(Category, :count).by(1)
        
        expect(response).to have_http_status(:found)
      end
    end

    context "with invalid attributes" do
      it "does not create a new category" do
        expect {
          post :create, params: { item: { name: "" } }
        }.not_to change(Category, :count)

        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end