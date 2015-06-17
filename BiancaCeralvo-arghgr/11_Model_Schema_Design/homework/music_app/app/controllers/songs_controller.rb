class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = set_song
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to songs_path, notice: "Song successfully added."
    else
      render 'new', notice: "Song creation not successful."
    end
  end

  def edit
    @song = set_song
  end

  def update
    @song = set_song
    if @song.update(song_params)
      redirect_to song_path(@song), notice: "Song successfully updated."
    else
      render "edit", notice: "Song update not successful."
    end
  end

  private

  def set_song
    Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :artist_id)
  end

end
