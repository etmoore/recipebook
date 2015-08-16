require 'rails_helper'

describe PublicController do
  describe 'index' do
    it 'renders the homepage' do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe 'about' do
    it 'renders the about page' do
      get :about
      expect(response).to render_template('about')
    end
  end
end
