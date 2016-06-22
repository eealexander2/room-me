class Roommate < ActiveRecord::Base
	has_many :responses
	has_many :matches, through: :responses
end
