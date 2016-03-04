require 'rails_helper'

RSpec.describe ActivitiesController, type: :controller do
  describe '#index' do
    it 'responds with success' do
      get :index, month: {y: 2016, m: 3}
      expect(response).to be_success
    end
  end
end
