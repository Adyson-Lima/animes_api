class Api::V1::AnimesController < ApplicationController

  before_action :set_anime, only: %i[show] # show update destroy

  def index
    @animes = Anime.all 
    render json: @animes
  end

  def show
    render json: @anime
  end

private

def set_anime
  @anime = Anime.find(params[:id])
end

def anime_params
  params.require(:anime).permit(:name, :age)
end

end