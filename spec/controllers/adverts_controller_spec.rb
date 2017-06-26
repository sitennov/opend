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

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'save the new advert in the database' do
        expect { post :create, params: { advert: attributes_for(:advert) }}.to change(Advert, :count).by(1)
      end

      it 'redirects to index view' do
        post :create, params: { advert: attributes_for(:advert) }
        expect(response).to redirect_to advert_path(assigns(:advert))
      end
    end
  end

  describe 'GET #show' do
    before { get :show, params: { id: advert.id }}

    it 'assings the requested advert to @advert' do
      expect(assigns(:advert)).to eq advert
    end

    it 'renders show view' do
      expect(response).to render_template :show
    end
  end
end
