class BandsController < ApplicationController
  def index
    if params[:query].present?
      @bands = Band.global_search(params[:query])
    else
      @bands = Band.all
    end
  end

  def show
    @band = Band.find(params[:id])
    @band_member = BandMember.new
    @message = Message.new
    @song = Song.new
    @song_file = SongFile.new
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)
    @band.band_members.build(user: current_user, is_member: true)
    if @band.save!
      redirect_to band_path(@band)
    else
      render :new
    end
  end

  def edit
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])
    @band.update(band_params)
    if @band.save!
      redirect_to band_path(@band)
    end
  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy
    redirect_to bands_path
  end

  private

  def band_params
    params.require(:band).permit(:photo, :name, :current_member_count, :location, :bio, :genre, :photo)
  end
end
