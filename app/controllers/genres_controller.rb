class GenresController < ApplicationController
  def index
    @genres = Genre.filtrar(params['name'])
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new(name: params[:id_teste])
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to @genre
    else
      render :new
    end
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end
end
