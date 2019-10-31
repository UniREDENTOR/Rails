class ArtistsController < ApplicationController
  def index
      @artist = Artist.all
      if params['name'].present?
      @artist = @artist.where("name LIKE ?", "%#{params['name']}%")
    end
  end

  def show
    @artist = Artist.find(params[:id]).albums
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to @artist
    else
      render :new
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end

end
