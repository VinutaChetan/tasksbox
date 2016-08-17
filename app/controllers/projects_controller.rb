class ProjectsController < ApplicationController

	before_action :authenticate_user!
	load_and_authorize_resource


	def index
		if params[:status]
			@projects=current_user.projects.where('status = ?',params[:status])

		elsif params[:client_id]
			@projects=current_user.projects.where('client_id= ?',params[:client_id])	
		else	
		#@projects=Project.all
		@projects = current_user.projects
		end
	end

	def show
		#@project = Project.find(params[:id])
		@project=current_user.projects.find(params[:id])
		@task = Newtask.new
	end

	def new
		@project = Project.new
	end

	def edit
	#@project =Project.find(params[:id])
	@project=current_user.projects.find(params[:id])
	end

	def update	
	#@project= Project.find(params[:id])
	@project=current_user.projects.find(params[:id])
	@project.user_id=current_user.id
	if @project.update_attributes(project_params)
		redirect_to project_path(@project.id), notice:"successfully updated"
	else
		render action :"edit"
	end	
end	

def destroy
	#@project =Project.find(params[:id])
	@project=current_user.projects.find(params[:id])
	@project.destroy
		redirect_to projects_path, notice:"Successfully deleted #{@project.name}"
end		



	def create
		@project =Project.new(project_params)

		#for authentication purpose
		@project.user_id=current_user.id

		if @project.save
		redirect_to projects_path
		else
		render action: "new"			
		end
	end

private
def project_params
	params[:project].permit(:name,:client_id,:description,:start_date,:end_end, :status,:estimated_budget,category_ids: [])		
end
	
end	

