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
    if params[:band_member][:type] == 'audition'
      audition = BandMember.find(params[:id])
      if params[:commit] == "Accept"
        audition.is_audition = false
        audition.is_member = true
        audition.is_admin = false
        audition.save!
        redirect_to band_path(params[:band_id])
      end
    end


    if params[:band_member][:type] == 'invitation'
      invitation = BandMember.find(params[:id])
      if params[:commit] == "Accept"
        invitation.is_audition = false
        invitation.is_member = true
        invitation.is_admin = false
        invitation.save!
        redirect_to musician_path(params[:user_id])
      end
    end
  end

  private

  def audition_params
    params.require(:band_member).permit(:invitation_text)
  end
end
