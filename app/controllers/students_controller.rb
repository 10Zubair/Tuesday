class StudentsController < ApplicationController
	#include ApplicationHelper
	# can use all the helpers method in helper file be used in the controller
	layout "admin"

	before_action :load_student!, only: %i[show edit update destroy]
	helper_method :formatted_date
	def index
		@students = Student.all
	end
	def new
		@student = Student.new
	end
	def create
		@student = Student.new(
			# first_name: params[:student][:first_name],
			# last_name: params[:student][:last_name],
			# email: params[:student][:email],
			student_params)
		if @student.save
			redirect_to students_path
		else
			render :new
		end
	end
	def show
		@student = load_student!
	end
	def edit
		@student = load_student!
	end
	def update
		@student = load_student!
		if @student.update(student_params)
			redirect_to student_path(@student), notice: "Updated successfully"
		else
			render :edit
			
		end
	end
	def destroy
		@student = load_student!
		if @student
			@student.destroy
		end

		redirect_to students_path
	end

	private

	def load_student!
		@load_student ||= Student.find(params[:id])
	end

	def student_params
		params.require(:student).permit(:first_name,:last_name,:email, :date_of_birth, :permanent_contact_number,:alternate_contact_number,:permanent_address, :local_address)
	end

	def formatted_date(date)
		date.strftime("%a, %b %d %Y") if  date.present?
	end
end