class Project < ActiveRecord::Base
	#has_many :join_table
	#has_many :

	
	#join table
	has_many :project_categories
	has_many :categories, through: :project_categories

	belongs_to :client
	has_many :newtasks

	has_many :announcements
	belongs_to :clients
	
	
	validates_presence_of :name,:description,:start_date,:end_end,:client_id,:estimated_budget,:status
	validates_length_of :description, minimum:10
	validates_numericality_of :client_id

	#customer validations
	validate :check_date

	private

	def check_date
		if(!self.end_end.nil? && !self.start_date.nil?) &&  (self.end_end <=self.start_date)
			errors.add(:end_end,"should be greater than start date")
		end	
	end

	def self.new_projects
		Project.where('status=?',"new")
	end	
end
