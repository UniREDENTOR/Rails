class TracksController < ApplicationController
  def index
    @genre  = Genre.find(params[:genre_id])
    @tracks = @genre.tracks
  end

  def new
    @genre  = Genre.find(params[:genre_id])

    @track = @genre.tracks.new
    # OU
    @track = Track.new(genre_id: @genre.id)
  end
end
