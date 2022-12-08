class Demo < ApplicationRecord
	has_one :sub_demo

	before_create :greetings_message

	def greetings_message
		puts "Hi From Demo"
		
	end
end
