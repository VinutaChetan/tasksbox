class AnnouncementsController < ApplicationController
before_action :authenticate_user!

  def index
  	#@announcements = Announcement.all
    @announcements = current_user.announcements 
  end

  def create
  	@announcement = Announcement.new(announcement_params)
  	@announcement.user_id=current_user.id
   

		if @announcement.save
      Notification.greeting(@announcement).deliver!
		redirect_to announcements_path,notice: "successfully announced"
		else
		render action: "new"			
		end
  end

  def new
  	@announcement =Announcement.new
  end

  def show
    @announcement= current_user.announcements.find(params[:id])
    rescue ActiveRecord::RecordNotFound
    redirect_to announcements_path, notice:"Record not found"
  end 
 

  private
def announcement_params
	params[:announcement].permit(:title,:body,:user_id)
end
	
end
