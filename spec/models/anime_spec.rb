require 'rails_helper'

RSpec.describe Anime, type: :model do

  before{@anime = Anime.new}

  describe 'Testes de preenchimento do model Anime' do

    it 'name consegue ser preenchido?' do
      @anime.name = ''
      expect(@anime.name).to eq('cdz')
    end

  end

end