class Roommate < ActiveRecord::Base
	has_many :responses
	has_many :matches, through: :responses

	def find_potentials(user)
		user.matches.responses  
		potentials = []

		Roomates.where(location: user.location).each do |roommate|
		if user.status == 'a' && (roommate.status == 'c' || roommate.status == 'b') 
			potentials << roommate
		elsif user.status == 'b' && roommate.status == 'a'
			potentials << roommate
		elsif user.status == 'c'
			potentials << roommate
		end 
   end  
	
	 drop_em = []	
   user.responses.each do |response|
   	 if response.reply != nil 
   	 	 drop_em << response.match.roommates  
   end  
	 end 	
		
	 result = potentials - drop_em.uniq		
	 return result 
	#the ones i said yes or no to 
	#the ones that they said no to 



	end 

end
