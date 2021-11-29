class BandMembersController < ApplicationController
  def create
    if params[:commit] == "Submit Audition"
      band_id = params[:band_id]
      audition = BandMember.new(audition_params)
      audition.is_audition = true
      audition.is_member = false
      audition.user = current_user
      audition.band_id = band_id
      audition.save!
      redirect_to band_path(band_id)
    end



  end

  def update

    audition = BandMember.find(params[:id])

    if params[:commit] == "Accept"
      audition.is_audition = false
      audition.is_member = true
      audition.is_admin = false
      audition.save!
      redirect_to band_path(params[:band_id])
    end
  end

  private

  def audition_params
    params.require(:band_member).permit(:invitation_text)
  end
end
