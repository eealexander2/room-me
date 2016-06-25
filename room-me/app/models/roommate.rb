class Roommate < ActiveRecord::Base
	has_many :responses
	has_many :matches, through: :responses

	has_secure_password

	def find_potentials
		self.matches.responses  

		potentials = status_parser
	
	  drop_em = []	
	  self.responses.each do |response|
	 	  if response.reply != nil 
	 	 	  drop_em << response.match.roommates  
	    end  
	  end 	
			
		result = potentials - drop_em.uniq		

		return result 
		#the ones i said yes or no to 
		#the ones that they said no to 
	end 

	def status_parser
		potentials = []

		Roomates.where(location: self.location).each do |roommate|
		  if self.status == 'a' && (roommate.status == 'c' || roommate.status == 'b') 
			  potentials << roommate
		  elsif (self.status == 'b' && roommate.status == 'a')
			  potentials << roommate
		  elsif self.status == 'c'
			  potentials << roommate
		  end 
    end  

    potentials
	end

end
