require 'rails_helper'

describe AdvertsController do
  let(:advert) { create(:advert) }

  describe 'GET #index' do
    let(:adverts) { create_list(:advert, 2) }
    before { get :index }

    it 'populates an array of all adverts' do
      expect(assigns(:adverts)).to match_array(adverts)
    end

    it 'renders index view' do
      expect(response).to render_template :index
    end
  end

  describe 'GET #new' do
    before { get :new }

    it 'assigns a new Advert to @advert' do
      expect(assigns(:advert)).to be_a_new(Advert)
    end

    it 'renders new view' do
      expect(response).to render_template :new
    end
  end
end
