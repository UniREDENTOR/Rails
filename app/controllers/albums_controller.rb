class AlbumsController < ApplicationController
  def index
    @album = Album.all
    if params['title'].present?
      @album = @album.where("title LIKE ?", "%#{params['title']}%")
    end
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to @album
    else
      render :new
    end
  end

  private

  def album_params
    params.require(:album).permit(:title)
  end

end
