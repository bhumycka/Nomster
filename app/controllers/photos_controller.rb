<div class="booyah-box col-xs-10 col-xs-offset-1">
class PhotosController < ApplicationController
	before_action :authenticate_user!
  def create
  	@place = Photo.find(params[:place_id])
  	@place.photos.create(photo_params.merge(user: current_user))
    redirect_to place_path(@place)
  end

  private

  def photo_params
  	params.require(:photo).permit(:caption)
  end
end
</div>