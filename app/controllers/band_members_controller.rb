class BandMembersController < ApplicationController
  def create

    if params[:commit] == "Submit Audition"
      band_id = params[:band_id]
      audition = BandMember.new(audition_params)
      audition.is_audition = true
      audition.is_member = false
      audition.user = current_user
      audition.band_id = band_id
      raise
    else
    end
  end

  private

  def audition_params
    params.require(:band_member).permit(:invitation_text)
  end
end
