class BandsController < ApplicationController
  def index
    @bands = Band.order(name: :genre)
    if params[:query].present?
      @bands = @bands.where('title ILIKE ?', "%#{params[:query]}%")
    end

    if params[:query].present?
      @bands = Band.global_search(params[:query])
    else
      @bands = Band.all
    end

    respond_to do |format|
      format.html
      format.text { render partial: 'list.html', locals: { bands: @bands } }
    end

  update() {
    const url = `${this.formTarget.action}?
  query=${this.searchInputTarget.value}`
    fetch(url, { headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data;
      })
  }
  end

  def show
    @band = Band.find(params[:id])
    @band_member = BandMember.new
    @message = Message.new
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
