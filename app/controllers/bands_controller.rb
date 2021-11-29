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
  end

  private

  def band_params
    params.require(:power).permit(:photo, :name, :current_member_count, :location, :bio, :genre)
  end
end
