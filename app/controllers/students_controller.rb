class StudentsController < ApplicationController
	def index
		@students =Student.all
	end
	
	def show
		@student =Student.find(params[:id])	
	end
	
	def new
		@student = Student.new
	end

	def create
		@student =Student.new(student_params)


		if @student.save
		redirect_to students_path
		else
		render action: "new"			
		end
	end

	def destroy
	@student =Student.find(params[:id])
	
		redirect_to students_path, notice:"Successfully deleted #{@student.name}"
	end		
	
	private
		def student_params
		params[:student].permit(:student_id,:name,:mail,:major)		
	end
	

end
