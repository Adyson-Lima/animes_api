require 'rails_helper'

RSpec.describe Anime, type: :model do

  before{@anime = Anime.new}

  describe 'Testes de preenchimento do model Anime' do

    it 'name consegue ser preenchido?' do
      @anime.name = 'cdz'
      expect(@anime.name).to eq('cdz')
    end

    it 'age consegue ser preenchido?' do
      @anime.age = '1986'
      expect(@anime.age).to eq('1986')
    end

  end

  describe 'Testes de validação do model Anime' do

    it 'objeto anime valido com campos obrigatorios preenchidos?' do
      @anime.name = 'shurato'
      @anime.age = '1989'
      expect(@anime).to be_valid
    end

    it 'objeto anime invalido com campos obrigatorios não preenchidos?' do
      anime = Anime.new
      expect(anime).to be_invalid
    end

  end

end