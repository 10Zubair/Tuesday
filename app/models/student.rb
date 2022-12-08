class Student < ApplicationRecord
	has_many :blogs
	has_and_belongs_to_many :courses
	has_many :student_projects
	has_many :projects, through: :student_projects



	validates :first_name, presence: :true, length: {minimum: 3, maximum: 50}
	validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
	validates :last_name, presence: :true, length: {minimum: 3, maximum: 50}
	validates :email, presence: true, uniqueness: true
	validate :validate_student_age



	after_update :display_student_age

	def display_student_age
		if self.date_of_birth.present?
			age = Date.today.year - date_of_birth.year
			puts "*************Age of the Student is : #{age}***********"
		else
			puts "*************Age cannot be calculated without date of birth**************"
		end
		
	end

	def validate_student_age
		if self.date_of_birth.present?
			age = Date.today.year - date_of_birth.year
			if age < 15
				errors.add(:age, "Please provide a valid age!. Age must be greater than 15")
			end
		end
	end

	def full_name
		"#{first_name} #{last_name}"
	end
	def age
		if date_of_birth.present?
			age = Date.today.year - date_of_birth.year
		else
			nil
		end
	end
end
