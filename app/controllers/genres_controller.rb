class GenresController < ApplicationController
  def index
    @genres = Genre.all
    if params['name'].present?
      @genres = @genres.where("name LIKE ?", "%#{params['name']}%")
    end
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
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
