class Course < ApplicationRecord
	include Validateable
	has_and_belongs_to_many :students
end
