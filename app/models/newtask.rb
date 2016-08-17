class Newtask < ActiveRecord::Base
	belongs_to :project

	validates_presence_of :title #,:project_id,:due_date,:is_completed
	# validates_numericality_of :project_id 

	# validate :check_valid_date # if !self.project.nil?
	# validate :check_boolean

	# private
	# def check_valid_date
	# 	if((!self.project.nil?)&&(self.due_date < self.project.start_date || self.due_date >self.project.end_end))
	# 		errors.add(:due_date,"is invalid")
	# 	end	
	# end

	# def check_boolean
	# 	if !([true,false].include? self.is_completed)
	# 		errors.add(:is_completed,"should be either true or false")
	# 	end
	# end		

end
