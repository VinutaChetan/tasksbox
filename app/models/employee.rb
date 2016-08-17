class Employee < ActiveRecord::Base

	belongs_to :company
	has_many :department

	before_create :generate_employee_code

	def generate_employee_code
		self.code ="#{self.first_name[0..2]} - #{Employee.last.nil? ? 1 : Employee.last.id + 1}"
	end	
end
