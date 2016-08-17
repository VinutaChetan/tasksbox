class Category < ActiveRecord::Base
	#belongs_to :user
	has_many :project_categories
	has_many :projects, through: :project_categories

	validates :name, presence:true
	#validates_presence_of :name
end
