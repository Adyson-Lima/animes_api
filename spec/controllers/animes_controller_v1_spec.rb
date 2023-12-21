require 'rails_helper'

RSpec.describe Api::V1::AnimesController, type: :controller do

  before{@anime = Anime.create(name: 'fly', age: '1986')}

  describe 'GET /api/v1/animes' do
    it 'Consegue listar todos os animes e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

end