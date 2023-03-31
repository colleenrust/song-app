class SongsController < ApplicationController
  def index
    @songs = Song.all
    render :index
  end
  def show
    @song = Song.find_by(id: params[:id])
    render :show
  end
  def create
    @song = Song.new(
      title: params[:title],
      artist: params[:artist],
      album: params[:album],
      year: params[:year]
      ) 
    song.save
    render :show
  end
end
