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

  describe 'GET /api/v1/animes/id' do
    it 'Consegue listar um anime especifico e retornar status 200?' do
      get :show, params: {id: @anime.id}
      expect(response.body).to include_json(name: 'fly')
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/animes' do
    it 'Consegue criar um anime e retornar status 201?' do
      post :create, params: {anime: {name: 'slailormoon', age: '1987'}, format: :json}
      expect(response.body).to include_json(name: 'slailormoon')
      expect(response).to have_http_status(201)
    end
  end

  describe 'PATCH /api/v1/animes/id' do
    it 'Consegue atualizar um anime e retornar status 200?' do
      anime = Anime.last
      patch :update, params: {anime: {name: 'samurai x', age: '2000'}, id: anime.id}
      expect(response.body).to include_json(name: 'samurai x')
      expect(response).to have_http_status(200)
    end
  end

  describe 'DELETE /api/v1/animes/id' do
    it 'Consegue excluir um anime e retornar status 204?' do
      anime = Anime.last
      delete :destroy, params: {id: anime.id}
      expect(Anime.all).not_to include(anime)
      expect(response).to have_http_status(204)
    end
  end

end