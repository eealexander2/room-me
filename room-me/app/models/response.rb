class Response < ActiveRecord::Base
	belongs_to :match
	belongs_to :roommate
end
