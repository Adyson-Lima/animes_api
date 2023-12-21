class Api::V1::AnimesController < ApplicationController

  before_action :set_anime, only: %i[show update destroy] # show update destroy

  def index
    @animes = Anime.all 
    render json: @animes
  end

  def show
    render json: @anime
  end

  def create
    @anime = Anime.new(anime_params)
    if @anime.save
      render json: @anime, status: :created, location: api_v1_anime_url(@anime) 
    else
      render json: @anime.errors, status: :unprocessable_entity
    end
  end

  def update
    if @anime.update(anime_params)
      render json: @anime
    else
      render json: @anime.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @anime.destroy!
  end

private

def set_anime
  @anime = Anime.find(params[:id])
end

def anime_params
  params.require(:anime).permit(:name, :age)
end

end