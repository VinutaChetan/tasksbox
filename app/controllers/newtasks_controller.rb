class NewtasksController < ApplicationController

	load_and_authorize_resource
	def create
		@task = Newtask.new(newtask_params)
		if @task.save
			redirect_to project_path(@task.project_id), notice:"Successfully created"
		end
	end	

	def mark_as_complete
		task =Newtask.find(params[:newtask_id])
		task.update_attributes(is_completed: true)

		Notification.completed(task,current_user).deliver!

		redirect_to :back,notice:"Successfully completed the task"
	end	
			
	def mark_as_incomplete
		task =Newtask.find(params[:newtask_id])
		task.update_attributes(is_completed: false)

		Notification.incompleted(task,current_user).deliver!

		redirect_to :back,notice:"Incompleted the task"
	end	
	
	private
	def newtask_params
	params[:newtask].permit(:title,:due_date, :project_id, :is_completed)
	end	
end
