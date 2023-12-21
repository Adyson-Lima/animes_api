require 'rails_helper'

RSpec.describe Anime, type: :model do

  before{@anime = Anime.new}

  describe 'Testes de preenchimento do model Anime' do

    it 'name consegue ser preenchido?' do
      @anime.name = 'cdz'
      expect(@anime.name).to eq('cdz')
    end

    it 'age consegue ser preenchido?' do
      @anime.age = ''
      expect(@anime.age).to eq('1986')
    end

  end

end