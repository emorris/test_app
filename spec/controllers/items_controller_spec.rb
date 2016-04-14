require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  describe "GET index" do
    it "get all items json" do
      item = create(:item)
      get :index
      expect(response.body).to eql({items: [item]}.to_json)
    end
  end

  describe "Create /Post" do
    it "creates default value " do 
      post :create
      item = JSON.parse(response.body).with_indifferent_access
      expect(item[:name]).to eql("test name")
      expect(item[:price]).to eql(6.66)
    end
  end
end
