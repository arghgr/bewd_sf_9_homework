class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = set_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artists_path, notice: "Artist successfully added."
    else
      render 'new', notice: "Artist creation not successful."
    end
  end

  def edit
    @artist = set_artist
  end

  def update
    @artist = set_artist
    if @artist.update(artist_params)
      redirect_to artist_path(@artist), notice: "Artist successfully updated."
    else
      render "edit", notice: "Artist update not successful."
    end
  end

  def destroy
    @artist = set_artist
    @artist.destroy
    redirect_to artists_path
  end

  private

  def set_artist
    Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :record_label_id)
  end
end
