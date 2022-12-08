class Course < ApplicationRecord
	validates :name, presence: :true, uniqueness: true
	validates :description, presence: true, length: {minimum: 10, maximum: 50}
	has_and_belongs_to_many :students
end
