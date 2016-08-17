class Company < ActiveRecord::Base

	has_many :employees
	validates :name,:website,:email, presence: true

end
