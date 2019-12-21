class TracksController < ApplicationController
  def index
    @tracks = Track.all
      if params['name'].present?
        @tracks = @tracks.where("name LIKE ?", "%#{params['name']}%")
      end
  end

  def show
    @tracks = Track.find(params[:id])
  end

end