class SongFilesController < ApplicationController
  def create
    band_id = params[:band_id]
    song_id = params[:song_id]
    uploaded_song_file = SongFile.new(song_file_params)
    uploaded_song_file.song_id = song_id
    uploaded_song_file.user = current_user
    uploaded_song_file.save

    redirect_to band_path(params[:band_id], anchor: "the%20rehearsal%20room")
  end

  def song_file_params
    params.require(:song_file).permit(:song_document, :text_content)
  end
end