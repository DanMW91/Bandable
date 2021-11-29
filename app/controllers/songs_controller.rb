class SongsController < ApplicationController
  def create
    new_song = Song.new(song_params)
    new_song.band_id = params[:band_id]
    if new_song.save
      redirect_to band_path(params[:band_id], anchor: "the%20rehearsal%20room")
    else
    end
  end

  private

  def song_params
    params.require(:song).permit(:name, :band_id)
  end
end
