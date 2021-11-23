class BandsController < ApplicationController
  def index
    @bands = Band.all
  end

  def show
    @band = Band.find(params[:id])
  end

  private

  def band_params
    params.require(:power).permit(:photo, :name, :current_member_count, :location, :bio, :genre)
  end
end
