module Validateable
	extend ActiveSupport::Concern

	included do
		validates :name, presence: :true, uniqueness: true
		validates :description, presence: true, length: {minimum: 10, maximum: 500}
	end
end