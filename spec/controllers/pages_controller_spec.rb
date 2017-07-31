require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  before do
    15.times { |x| Page.create!( name: "Name #{x}", description: "Description #{x}", tags: "lemon orange" ) }
  end
  
  describe 'GET #index' do
    it "returns a successful 200 response" do
      get :index
      expect(response).to be_success
    end
    
    it 'populates an array of all page if name not set' do
      post :create, :params => { :name => '' }
      expect(response.body).to_not be_nil
    end
    
    it 'populates an array of all page if name set lemon' do
      post :create, :params => { :name => 'lemon' }
      expect(response.body).to_not be_nil
    end
    
    it 'array is nil if name is lemonad' do
      post :create, :params => { :name => 'lemonad' }
      expect(response.body).to eq ""
    end
  end
end
