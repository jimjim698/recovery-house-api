class Api::AnnouncementsController < ApplicationController
  skip_before_action :verify_authenticity_token


  def index
    @announcements = Announcement.all
    render json: @announcements

  end


  def create
      @announcement= get_current_user.announcements.build(announcement_params)
      @announcement.save
      render json: @announcement

  end


private


  def announcement_params
    params.require(:announcement).permit(:content,:likes, :dislikes)
  end
end
