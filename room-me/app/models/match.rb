class Match < ActiveRecord::Base
	has_many :messages
	has_many :responses
	has_many :roommates, through: :responses
end
