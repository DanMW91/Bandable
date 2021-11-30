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

    if params[:commit] == "Submit Invitation"
      musician_id = params[:musician_id]
      @band_member = BandMember.new(audition_params)
      @band_member.is_audition = false
      @band_member.is_member = false
      @band_member.user = User.find(musician_id)
      @band_member.band = Band.find(params[:band_member][:band])
      if @band_member.save
        redirect_to musician_path(musician_id)
      else
        render "users#show"
      end
    end
  end

  def update
    audition = BandMember.find(params[:id])

    if params[:commit] == "Accept"
      audition.is_audition = false
      audition.is_member = true
      audition.is_admin = false
      audition.save!
      redirect_to band_path(params[:user_id])
    end

    @band_member = BandMember.find(params[:id])

    if params[:commit] == "Accept"
      @band_member.is_audition = false
      @band_member.is_member = true
      @band_member.is_admin = false
      @band_member.save!
      redirect_to musician_path(params[:user_id])
    end
  end

  private

  def audition_params
    params.require(:band_member).permit(:invitation_text)
  end
end
