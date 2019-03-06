class Api::AnnouncementsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @announcement= Announcement.create(announcement_params)
    binding.pry
  end


private


  def announcement_params
    params.require(:announcement).permit(:content,:likes, :dislikes)
  end 
end
